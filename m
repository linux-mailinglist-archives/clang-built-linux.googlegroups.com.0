Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAU66KJQMGQEZYFT6HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFD7524453
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 May 2022 06:37:23 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id h19-20020aa796d3000000b0050d3c025470sf2091912pfq.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 May 2022 21:37:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652330242; cv=pass;
        d=google.com; s=arc-20160816;
        b=JvQHHxU7d2uLbVf69l89ck/FttaIOOOsr59Eabm0jgHosRKOP6rO+0wAJJ8zhl2IBd
         paoQxBPQDEq4rrG68S2grm8+hbcsY+hYkq+rrZoMUDUUWHnQbiCjQIfOPqkfPdfO7xFa
         sndlVyXVlsoJBL/i8PJEQEetrv1CPFNFKmjpdc0je424j6VKp4qc99GbtahvQcRnVVE9
         TAh54x0+kX9YcWhaY715h0lX8e4pzRrEzhPshuOYGrJn7w9bRgipybsULkhrd2PSizvy
         fk+D/8XYEMS/jb+FAS7DP0WVAj5rstvZ27V7akvwC92Kvi7YomOgEP70JscmaO0F/TYs
         I5/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=aoL+BxO8gt640yFDHMCksxDYApcHbgI6HINkTC9HNrw=;
        b=0Qz26WKxjIKr4DETBbOVeKGyWlnQcZjj7FzHWCyRRkz4Imaf0KjsgAVEtqagg7Z8Ah
         L9+oUSDVYGJBQR/BoTUWbWYZiYczQGq0CQQCyFQsV9B0NSGE8Jz2qFTUCFH0nt8rYKsu
         knbYaIugcv30CRkpCKTfxqjb1jO1kSIRcyFHrRHGiduInU3feLo+LTcJXqrmasNfKO2x
         gOoC21+Z18z1W46IVt8OKuUrYIWh5FO49Wnr7f40uWljeWCPJHD6qiI5AWiSVuQ1uKoF
         pOG0iJU3e3kmlHzJDzfCwr0bHM5YoJJ97N82n5j40t7mJW+wruLwk4sAj2FSFKP9vh45
         yDGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UDf+KO+3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aoL+BxO8gt640yFDHMCksxDYApcHbgI6HINkTC9HNrw=;
        b=fNw3TihxRE14PH9BBkPlJ/H+39O08eEq9EhA4mCC165WJVyDJex0BR6Tul61cIa/mL
         6lWpfbyci3z6YyXdW+UbBxiT2xsD5mz2O0S83Cgu7DOQuYzfLK8iyLQS42dVyQz+gFUA
         S1pS4DZydCDHwOs00C6UcfzUTcb96/JNVWkSUNN8K2CI9F9aaBL+qHqR46ZjwYe0/cYt
         W+hb+pYeiySLq9WwoS+bMH+YqjF4PQjPhc7EhHxTxUwTIyHe8tkd/5XN2qGCl5FQ1U3A
         FNmL5XnmujFc+JdHKqmnQSqxrXv2bsu+bWZLxRrSYbI+pbpcJ0VUT0Lq9TQjQqaQ4AYi
         SN/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aoL+BxO8gt640yFDHMCksxDYApcHbgI6HINkTC9HNrw=;
        b=hzmcMVuUZetoO+Z+NsgC3p+FZAdJ4isq3wxn6+STybC16Yx6k2ciqGTmR8/TtESiJJ
         Nh21Z6ywzTy7TXN5e1d17JGequiYJJkogGMRrIdMh9HjCsxqhB4FlBoyERCVzDwONRTR
         8RVQ+hzLIWsmvQwc9dWYH2DTrBEYK7nqu1IzKVY+bPpZLRxRWI6jI3lw9l95MaUSLlFL
         eyDOh7oB8AhAIG8NxAI+flFkUrowQIh9/+IdVgTs0G/HopDqAOrHxvLiKvjRmtRcTiAa
         TUJHlTEgFhwDbRets6hXRojvrx6A7DV+FH5mCb8tu4DHHunTgay8m6y2ZPzCX8IRNRXv
         vwmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qZeESmNQq6XBFP2eWx87/1dnplMKk7j9YjWGmdJ29iTuHnWVb
	NM5z2Ztfu8SeYSa+GdAlkPw=
X-Google-Smtp-Source: ABdhPJxpEeq92OfENp4NJjSNnDH0/vpSMbPsCT3ifKyTMEN7fMH0keO9uWyg9OU9bMAmK1O1mUQY8Q==
X-Received: by 2002:a62:7994:0:b0:4e1:58c4:ddfd with SMTP id u142-20020a627994000000b004e158c4ddfdmr9562725pfc.65.1652330242285;
        Wed, 11 May 2022 21:37:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:185:0:b0:3c6:ab6b:a05d with SMTP id 127-20020a630185000000b003c6ab6ba05dls194371pgb.8.gmail;
 Wed, 11 May 2022 21:37:21 -0700 (PDT)
X-Received: by 2002:a63:5d0c:0:b0:3c5:e4c1:a03b with SMTP id r12-20020a635d0c000000b003c5e4c1a03bmr23807819pgb.97.1652330241610;
        Wed, 11 May 2022 21:37:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652330241; cv=none;
        d=google.com; s=arc-20160816;
        b=IVdeW2Bsd9broyGtFr8CUHQIsErtNuGddSL7jBD++9YGmUU2cbaeZyhct4sIY0BrMw
         XblAYcjzTkYdIglH8guSZSZpT435MJHOM0a0My+XEI7yIELDHVeCSnjt6JRaozjy4K3m
         41qGyhay4xDU1GOxl2suS9ektbtSjYCq8BaeMhwhHwTuaiYTX+0PPS6S5p786RNcRPO+
         2Y/USywO6F5WTG7YuoKaIsSAfWrTwSWcSzqDvDm5uclUH6ePe3OnbzrbC22yNaU81JnN
         12L8qMEiVqUDD/VoBrLYimzmnN94V2FC5m3DxAV7Q5EjGXLICbuMaVHFBl9+9sBODmNq
         dodQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=tkmfQXshct+rM5sNv86ojAR4iOGgSUB8H7eo3J48fKg=;
        b=zZGgTLbGL0OZxEkfPYmLqfvle5IFjCJeXaNcA7COKiPNOpn3C8mTFkKE9ucT8lQvY6
         EWx8zJrjrbt8AyxUwbUOM2ZaiocwreDQH4rL+O0shJqd1ZYpQJAoGguNl17wm0mzy4nF
         IoJz7ufSehnrXFsErLadMeYT+sSA5UscUxkRXWzzDUoKqpHa6ylLd+6ZXqgSdYiJSi4e
         BhDDkoCVEYc1QADWnnCHlYeY8k071ODBcL1X46YDK7c4y+sOgr7JyNWM3u6ijTq8DR/f
         fw8V/f5JmsYyAOyzf6ctvJd5y12KpnidoB0+hGq/K75Zh+szz2PzSn5MkXjK7nayPK+e
         OW0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UDf+KO+3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id v21-20020a17090a899500b001c69d267568si92619pjn.0.2022.05.11.21.37.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 May 2022 21:37:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 24C4b5s0004060
	for <clang-built-linux@googlegroups.com>; Thu, 12 May 2022 13:37:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 24C4b5s0004060
X-Nifty-SrcIP: [209.85.214.180]
Received: by mail-pl1-f180.google.com with SMTP id m12so3801907plb.4
        for <clang-built-linux@googlegroups.com>; Wed, 11 May 2022 21:37:06 -0700 (PDT)
X-Received: by 2002:a17:902:7891:b0:15e:cae9:7620 with SMTP id
 q17-20020a170902789100b0015ecae97620mr28744958pll.136.1652330225331; Wed, 11
 May 2022 21:37:05 -0700 (PDT)
MIME-Version: 1.0
References: <20220508190631.2386038-1-masahiroy@kernel.org> <20220508190631.2386038-2-masahiroy@kernel.org>
In-Reply-To: <20220508190631.2386038-2-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 12 May 2022 13:35:52 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT3+rZTzt1Ed-V_pjA8wEFEVj7Uxo8PTtEhdyzFcqqM+g@mail.gmail.com>
Message-ID: <CAK7LNAT3+rZTzt1Ed-V_pjA8wEFEVj7Uxo8PTtEhdyzFcqqM+g@mail.gmail.com>
Subject: Re: [PATCH v4 01/14] modpost: remove left-over cross_compile declaration
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>,
        linux-modules <linux-modules@vger.kernel.org>,
        linux-s390 <linux-s390@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=UDf+KO+3;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, May 9, 2022 at 4:09 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> This is a remnant of commit 6543becf26ff ("mod/file2alias: make
> modalias generation safe for cross compiling").
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied to linux-kbuild.


>
> Changes in v4:
>   - New patch
>
>  scripts/mod/modpost.h | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
> index cfa127d2bb8f..d9daeff07b83 100644
> --- a/scripts/mod/modpost.h
> +++ b/scripts/mod/modpost.h
> @@ -174,7 +174,6 @@ static inline unsigned int get_secindex(const struct elf_info *info,
>  }
>
>  /* file2alias.c */
> -extern unsigned int cross_build;
>  void handle_moddevtable(struct module *mod, struct elf_info *info,
>                         Elf_Sym *sym, const char *symname);
>  void add_moddevtable(struct buffer *buf, struct module *mod);
> --
> 2.32.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-2-masahiroy%40kernel.org.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT3%2BrZTzt1Ed-V_pjA8wEFEVj7Uxo8PTtEhdyzFcqqM%2Bg%40mail.gmail.com.
