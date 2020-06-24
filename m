Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM44Z73QKGQEK3JANYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 933BE207F13
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 00:05:40 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id v16sf2360620pfm.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 15:05:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593036339; cv=pass;
        d=google.com; s=arc-20160816;
        b=zkTk24NiToXaL2wLBdBWKe4DjhYhUNt6s8Bv334vB89tlQ4P8LY1WWmkrgf8P0CSGH
         tur518eCEHueAf+lKEO8idDomI5t0Aby4Pp/8iH5XG/fQYFdr/dlqnF/TYm43RSNjCC6
         pfr+H0a2Tn1o3xAeRa4UX6MygZFevK6w3ERFYngWIkDfNjLxr88lTeyLD2+1fN/Y5tLM
         4DlJhRnkCmfiHQBNxt164BNJQsbAC3uGYwKCXAQOutKPPT4WzrWGhIWK4OdTbp95ESYQ
         31VKgqnXoJLtlMv57A1LaV9ON36XEQWedDrcZR6T5SRzq23yG1ndFLlvd7P4UJpR5GqL
         arCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=g2YleDJshqDfdzQdreuLV1PKL1hyfjX05KURmCT/quI=;
        b=ff78Gz27D4dEwdLgB7LC90JG3HV3AauZ+f5ld1KpL32KGqLvkXe+VaHQwEJELDzPPN
         2zMvnOKQirS9lbE3JSiZNikkzfdRwDWlYkyh4uqISIm4xVaQMirGbfH/14+lfexX8DGr
         /dcR93sCkpTB9f+Bt93i0pJ1NMbCRqaIlS2PDTisJHLB0Lr8JJu7DSy+9dkWcPp96iFe
         lDF9Erei66vcOBNSmMVdtJHnE5l9Tr8ny8C+EIVTRzpHds714dLGBkaE2V7OetaFhUNf
         Ygwwhp6/5cbO9qvEDtN32a/WiKKxVwlAsIDTYJrc6xKFs0cHvwoiyMZxExoeMJtuTKTz
         +32g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MgAD5Kdk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g2YleDJshqDfdzQdreuLV1PKL1hyfjX05KURmCT/quI=;
        b=OIwjHPQxrkjkG4y7hhUVy5U3Kwr1qaFJVgQzTLWPaXlph4ryHHCyKugHKb46Exrs0T
         AbzynszNQZckpGAyaMqbFlH5Iepl4E7u82/0s/h3zF8OKP0Z5oNjIz/4qnfAzcizEzng
         0Y7b50O98IZZZzsAvmZKGEaQCI1CmY3r/FVoZsJr8lrEjl13gH9o3iuQdMsU99JNuphu
         9ERpS5+tp94t21oOAv5c11p/y54iw18GPCK/O+s4n+o+bUX3EFghyMIX3EIHnhy38aLl
         /9P1nCotuaHBX9sFxjRwbQIwkhyLHnowsd5rwFdxjKdTvlRIWe5x2cgF2ZR3vw513aTa
         e21g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g2YleDJshqDfdzQdreuLV1PKL1hyfjX05KURmCT/quI=;
        b=avd9AUe7Qe6qonMeJ06Knnwh6tQdd3WVA3gQNykvHnzNuxqJ9ac9gY7/p13gj3Jv3L
         cPTlmpWvqMUcxNKTcjJYSE3ydvQ3g8ogS0zA7An9thAzUL79X9ie9TlAJytr9hH4WkMO
         6HD2mW4lNOzVSAPJOgW4dhleL4GK5kDDerCVKlzadceOaFySpYPDZ3dX8PsEQ9Qu0W+1
         /cBMzAJUOWJXJGZ+oKBgdfJkOyRtcX33mfjFVgMfs6X4CvZLQpaB8vYXZrntbYnIbzwS
         lvRBuXgUX/lxahsEooz/Om8Dr51SeROh/uz33kWQe1QQ9aHfuYJcxMqswakRAMSdkzAJ
         u2sg==
X-Gm-Message-State: AOAM531WTNuwLpBEZzzcqxd7OiuGIqUe15ojDXyIGuCS7NHGnhiIdzeF
	j0TyzZ5Nb6A1aeisPUm55fE=
X-Google-Smtp-Source: ABdhPJz51NUdwBDtONUL9PGAcXxqhVdSfC70ktL36wKXAnqCh2Ldiww3gOzf2W8EtR7akPXY3YJLhQ==
X-Received: by 2002:a63:d918:: with SMTP id r24mr23933013pgg.119.1593036339225;
        Wed, 24 Jun 2020 15:05:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384c:: with SMTP id nl12ls1464395pjb.2.canary-gmail;
 Wed, 24 Jun 2020 15:05:38 -0700 (PDT)
X-Received: by 2002:a17:90a:fe83:: with SMTP id co3mr29556472pjb.204.1593036338889;
        Wed, 24 Jun 2020 15:05:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593036338; cv=none;
        d=google.com; s=arc-20160816;
        b=nj7dngtKhKdOim1StUYwABI4Pn4XaRmqX0DjLDGLr9AukMHaFpuSJnfT2uMyqTw9Bv
         +tpEFfpkzpYCN6QvyHaNvcwvzAdbiRWc6IhYxTZ9LzGtlfvaGXyiFjR8pusjmhfBgozV
         N486hIuMb/iWhQAL5Je+owGtS+qe+LcCcs4v6O+GAG9WSKXRUnZAA8YRvP/bp7sluR0Z
         aAKCKz7JMszP/65tWXBaVIIjxwXtql2AO2ghqRfo877MTIjEwqRycBi5mSOlufJmw8uw
         39C+gemYyluypfg0JootOrUItiCCLDlNOjN9ACSePftXYLveOF5Ny1DqKGWg2egXanto
         TCWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xltSa+pOLgf6vSXNCg3Iy8gwRMudEIRX75C87X2gOqg=;
        b=i4a9QELS1nwHSZXfl/viaNjBVccSIZgMVtfWdpmhl0PGxcqCmgA3zOEcq6VpDBhqem
         v3Yx6+3OqkcXfYpqnb1sFaqGYEgU/dxu/e9sqxYKbyEVamH+XQatgqauW+kSqL0JZOef
         FenmOW3KMpYUS4tjq8MwtlVWcsCwgjTJNNhHKIyKZ3w0dbbk874+Z4FHB5aqzwdrhGHJ
         llTOKzR4neW+RX5kVI2b48X3E/cNMcBAYbf1mY01g+ChL/uhgBIf+McpFXZO197xwD3b
         hfGS5JAcyeW5wbWKJLd6byvuENER3D+FPs/i7LpsS3xXoL2l16KVX7PRZ3F+pcXhDMJk
         A8QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MgAD5Kdk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id p9si1044037plr.1.2020.06.24.15.05.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 15:05:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id cm23so1861561pjb.5
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 15:05:38 -0700 (PDT)
X-Received: by 2002:a17:902:ab8d:: with SMTP id f13mr19785027plr.119.1593036338270;
 Wed, 24 Jun 2020 15:05:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200624203200.78870-13-samitolvanen@google.com>
In-Reply-To: <20200624203200.78870-13-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jun 2020 15:05:26 -0700
Message-ID: <CAKwvOdkgXpxyV6UOpwh1O-_miu4O7pMDaSys=7BYg6jDZ-ox-A@mail.gmail.com>
Subject: Re: [PATCH 12/22] modpost: lto: strip .lto from module names
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MgAD5Kdk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Wed, Jun 24, 2020 at 1:33 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> With LTO, everything is compiled into LLVM bitcode, so we have to link
> each module into native code before modpost. Kbuild uses the .lto.o
> suffix for these files, which also ends up in module information. This
> change strips the unnecessary .lto suffix from the module name.
>
> Suggested-by: Bill Wendling <morbo@google.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  scripts/mod/modpost.c    | 16 +++++++---------
>  scripts/mod/modpost.h    |  9 +++++++++
>  scripts/mod/sumversion.c |  6 +++++-
>  3 files changed, 21 insertions(+), 10 deletions(-)
>
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index 6aea65c65745..8352f8a1a138 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -17,7 +17,6 @@
>  #include <ctype.h>
>  #include <string.h>
>  #include <limits.h>
> -#include <stdbool.h>

It looks like `bool` is used in the function signatures of other
functions in this TU, I'm not the biggest fan of hoisting the includes
out of the .c source into the header (I'd keep it in both), but I
don't feel strongly enough to NACK.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>  #include <errno.h>
>  #include "modpost.h"
>  #include "../../include/linux/license.h"
> @@ -80,14 +79,6 @@ modpost_log(enum loglevel loglevel, const char *fmt, ...)
>                 exit(1);
>  }
>
> -static inline bool strends(const char *str, const char *postfix)
> -{
> -       if (strlen(str) < strlen(postfix))
> -               return false;
> -
> -       return strcmp(str + strlen(str) - strlen(postfix), postfix) == 0;
> -}
> -
>  void *do_nofail(void *ptr, const char *expr)
>  {
>         if (!ptr)
> @@ -1975,6 +1966,10 @@ static char *remove_dot(char *s)
>                 size_t m = strspn(s + n + 1, "0123456789");
>                 if (m && (s[n + m] == '.' || s[n + m] == 0))
>                         s[n] = 0;
> +
> +               /* strip trailing .lto */
> +               if (strends(s, ".lto"))
> +                       s[strlen(s) - 4] = '\0';
>         }
>         return s;
>  }
> @@ -1998,6 +1993,9 @@ static void read_symbols(const char *modname)
>                 /* strip trailing .o */
>                 tmp = NOFAIL(strdup(modname));
>                 tmp[strlen(tmp) - 2] = '\0';
> +               /* strip trailing .lto */
> +               if (strends(tmp, ".lto"))
> +                       tmp[strlen(tmp) - 4] = '\0';
>                 mod = new_module(tmp);
>                 free(tmp);
>         }
> diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
> index 3aa052722233..fab30d201f9e 100644
> --- a/scripts/mod/modpost.h
> +++ b/scripts/mod/modpost.h
> @@ -2,6 +2,7 @@
>  #include <stdio.h>
>  #include <stdlib.h>
>  #include <stdarg.h>
> +#include <stdbool.h>
>  #include <string.h>
>  #include <sys/types.h>
>  #include <sys/stat.h>
> @@ -180,6 +181,14 @@ static inline unsigned int get_secindex(const struct elf_info *info,
>         return info->symtab_shndx_start[sym - info->symtab_start];
>  }
>
> +static inline bool strends(const char *str, const char *postfix)
> +{
> +       if (strlen(str) < strlen(postfix))
> +               return false;
> +
> +       return strcmp(str + strlen(str) - strlen(postfix), postfix) == 0;
> +}
> +
>  /* file2alias.c */
>  extern unsigned int cross_build;
>  void handle_moddevtable(struct module *mod, struct elf_info *info,
> diff --git a/scripts/mod/sumversion.c b/scripts/mod/sumversion.c
> index d587f40f1117..760e6baa7eda 100644
> --- a/scripts/mod/sumversion.c
> +++ b/scripts/mod/sumversion.c
> @@ -391,10 +391,14 @@ void get_src_version(const char *modname, char sum[], unsigned sumlen)
>         struct md4_ctx md;
>         char *fname;
>         char filelist[PATH_MAX + 1];
> +       int postfix_len = 1;
> +
> +       if (strends(modname, ".lto.o"))
> +               postfix_len = 5;
>
>         /* objects for a module are listed in the first line of *.mod file. */
>         snprintf(filelist, sizeof(filelist), "%.*smod",
> -                (int)strlen(modname) - 1, modname);
> +                (int)strlen(modname) - postfix_len, modname);
>
>         buf = read_text_file(filelist);
>
> --
> 2.27.0.212.ge8ba1cc988-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkgXpxyV6UOpwh1O-_miu4O7pMDaSys%3D7BYg6jDZ-ox-A%40mail.gmail.com.
