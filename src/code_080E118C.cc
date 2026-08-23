#include "prelude.h"

EC void __7ArticleUi(void *self, u16 article);
EC const char *GetName__C7Article(const void *self);

EC void *func_080E118C(void *self, const u8 *source, u32 kind)
{
    register u8 *saved asm("r6") = (u8 *)self;
    char name[32];
    u32 article;

    if (kind == 0xff) {
        __7ArticleUi(&article, *(const u16 *)(source + 4));
        register const char *article_name asm("r5") = GetName__C7Article(&article);
        register u32 length asm("r4") = strlen(article_name);
        if (length > 31)
            length = 31;
        memcpy(name, article_name, length);
        register char *buffer asm("r0") = name;
        register char *end asm("r1") = buffer + length;
        asm("" : "+r"(buffer), "+r"(end));
        *end = 0;
        saved[0] = 1;
        strcpy((char *)saved + 4, name);
    } else {
        name[0] = 0;
        saved[0] = 0;
        strcpy((char *)saved + 4, name);
    }
    return saved;
}
