Return-Path: <clang-built-linux+bncBAABB36LS3ZQKGQEYJJHVBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5FB17D80E
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 03:12:01 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id s8sf509297otd.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Mar 2020 19:12:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583719920; cv=pass;
        d=google.com; s=arc-20160816;
        b=WSidOD2XOctTDRksdtj0Mftyw62pT6r1Y9xD1mponXNfrWwfySGaqeFxG/Twn4ddo/
         HxuyYq/TNCxI6cpOdnNHDUOWXu4lsW96y7nGvfgUFK5B1pXaiwW4bwDWv9iYVndv6lGB
         fYnVEvDShoBJLk7b0MNpmv4M45T4ZIcDvSmxVFXbvTkgonwk6XAok2tfvIrupoiUJrKB
         RnuU/2SrSPoWh+pRQAgCT6g/KHMmXYlcBgfbKhiYlGwHrSdgaSxrecbzr2Vya4hTVOX6
         zFKkUZtPiaJ7VLLvxBwgnLuE+Hn2ZTNWCkDpie6CHMS6O3VLTp2+SdmOWIsFqK8UdsIF
         UR2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=mSMT7pl4t73Yt4QwiRKdJpWqlZVuH8CznM0gbtQh+t4=;
        b=niI8eUa1YMwkr6g28WTX+YSK+wJKR6RzrCAlFD/kQ6qogDGChWkyYfBMbtb6W//M37
         MicTxFY0fOhwuPaHLeL83oeWSy8aSFfkwfbAZlioXlz94BZubsUTxLtIKR+0KpFPpNA4
         bXFije2YY2FSsvUi0PHeSYkJjJ5yU8CiqHtpzeCGtTyYzFelwxWMdnVpizcmVaTx/iMF
         Wydadr78ZXxB1Rv+XxiwW40/SiU5LMe7TuCqQ2ejz+kC6m3XQwjzUfAb4kM8xUyVI4TS
         Il3Ya1r6nGLoSchn8lAA7qhRxjy0cMNy/wC+Y4LRp3/Z2h2SL6/H4QPkOYkoNN5W9awm
         nzYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=brn1anuS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mSMT7pl4t73Yt4QwiRKdJpWqlZVuH8CznM0gbtQh+t4=;
        b=psKgvCDJNQuNBJJLSedlbcMRvAd8KBNdI5sGGQf0ZI0Rc7vZzIHUJHQc/d8hCJhgkh
         nOwaoIzFvZjwya6l5PAZc7o7hfr+2wtkljoOWio3xdoiSPkuw4oCIWJKreXAnQ6jc5+M
         VfUspdqQimdNcDbT4/QHPfCJQ/g73wRYMK5ElzuzUFUEO05b23F0NHIx7q5+H5FPe3AH
         s7rGvX3zf7Rf9Zi+l4dKzHenIBgp8ZSeFvm+9VW8H6z4He20WlkREccTW2AD35AG5c3p
         hOdu/uX7iJF1WWCGVfp7KbVKxT2kXmG46Rb8VNeiPrnyxofBuajOMfCVq6JR9mOOHD0M
         ytFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mSMT7pl4t73Yt4QwiRKdJpWqlZVuH8CznM0gbtQh+t4=;
        b=RZRnI75UmO5B03jId6YjmoeRfZi455KGEvW7mcJqv91vyVI7E6yQjyO5Aklt5+N1Xa
         VJ988BXwsyknTm8ybfViREUZt11NzmIBY6VB8sbgI71PFxzlBmpXxWZkGztHUICmxUsU
         llKAHbMMQR5s72wAzPJ5IEisS3pOk3F+UvtQSerwzWTK9NU1psbmmqAUq1HkdNw2KF9J
         Pq6o4dC89W2EEFBKXXNUB2fXqiEeiGHOfKtybJUtYFd+/IFKtOqazHU8KTNspE3z/Qir
         BZzOP/my/8t/YyMs2i1uLb1BW53ZDh+xsSW3sLPiBDWc+t691oO6BaZNnlPcJNxPQ/j1
         YYSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0ZZCYCQoCswwYzZeLPSoEzauAZcywK1oNZvYqO8V4K/TTd30h+
	peIQGje3AudZwA1ypvT5orQ=
X-Google-Smtp-Source: ADFU+vswa87ekM6jmpntp8mNDwhpa7z3JUW+KnXSaHSruZFYxRP4EoxUHOYuFJ9Qhsw8klW/LDD6iw==
X-Received: by 2002:aca:5303:: with SMTP id h3mr9769709oib.74.1583719919915;
        Sun, 08 Mar 2020 19:11:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:49cc:: with SMTP id w195ls2265332oia.10.gmail; Sun, 08
 Mar 2020 19:11:59 -0700 (PDT)
X-Received: by 2002:a05:6808:646:: with SMTP id z6mr10166607oih.163.1583719919629;
        Sun, 08 Mar 2020 19:11:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583719919; cv=none;
        d=google.com; s=arc-20160816;
        b=qNnEcB/1DJxfkqZ3FCFplI9kbgHV17wJoSqeDfS+NOrZceGzAsCkRQIA97jV2zZHfa
         ryQGtYcDprkPY2IH1XEV6fq1op8X2ySRCRVI4tNUxWcRBg8HxGvC4JhCCyQngGCbuG9p
         RW/iN6FHLebpS2zLlCI+hbziQALqvgFaHHWaO4lt+njekB7TCcPqTB6Qf1JSOpxLwYCK
         XK77uZpoCVNi19SpxXMmZDeDteZCPxrp9esh3TnkhnXL4BX2Pom4+jWOmp/0Nftkz1Fs
         dNiz+pM8hP2QfZrlnEdyosGqvdKZoadaXmsmAUUa3ewCDtT71UW9oxJxDOazQWbrQ4V9
         aixA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=cjFzylmuOvPTqSk4AfYJnlN1AXZVcRsUD5oy7paosWc=;
        b=X0XEhP6ZTflIyG1knDnFP8bNaCQOs6ufVtn98KQgt+xwBZowZaUefBQxkTgPu8Kz/w
         VqU5qGl5nrOYncrKwft3Kb8uyqjufTLyaLRJo4pYKGPkPt0AZMs1J25gDwvAStdHrGLW
         O2XIy7Fo7eaZKeupBzGDdo2fJKVOpkz+m5B/I0CtiaC38418ja+oSRppnfdV5sBji16I
         Z+9L4UX1FdB37QncxYoUkRmATxdLhhme6JltIgFdWyQ8hVS94KETJDvpoSJBTTIZ9G96
         8FVbwpdktysXzoz93CxgK8zw7dotCRT0Jg/7IvlmZZ/u+dz6nMWj2GM+UDtoWB3zeqUp
         iAUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=brn1anuS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id b2si259364oib.5.2020.03.08.19.11.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 19:11:59 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 0292Bgoi005240
	for <clang-built-linux@googlegroups.com>; Mon, 9 Mar 2020 11:11:43 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0292Bgoi005240
X-Nifty-SrcIP: [209.85.221.180]
Received: by mail-vk1-f180.google.com with SMTP id k63so2873vka.7
        for <clang-built-linux@googlegroups.com>; Sun, 08 Mar 2020 19:11:43 -0700 (PDT)
X-Received: by 2002:a1f:8cd5:: with SMTP id o204mr7525937vkd.66.1583719902032;
 Sun, 08 Mar 2020 19:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200308073400.23398-1-natechancellor@gmail.com>
In-Reply-To: <20200308073400.23398-1-natechancellor@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 9 Mar 2020 11:11:05 +0900
X-Gmail-Original-Message-ID: <CAK7LNARcTHpd8fzrAhFVB_AR7NoBgenX64de0eS2uN8g0by9PQ@mail.gmail.com>
Message-ID: <CAK7LNARcTHpd8fzrAhFVB_AR7NoBgenX64de0eS2uN8g0by9PQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Disable -Wpointer-to-enum-cast
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=brn1anuS;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Hi Nathan,

On Sun, Mar 8, 2020 at 4:34 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang's -Wpointer-to-int-cast deviates from GCC in that it warns when
> casting to enums. The kernel does this in certain places, such as device
> tree matches to set the version of the device being used, which allows
> the kernel to avoid using a gigantic union.
>
> https://elixir.bootlin.com/linux/v5.5.8/source/drivers/ata/ahci_brcm.c#L428
> https://elixir.bootlin.com/linux/v5.5.8/source/drivers/ata/ahci_brcm.c#L402
> https://elixir.bootlin.com/linux/v5.5.8/source/include/linux/mod_devicetable.h#L264
>
> To avoid a ton of false positive warnings, disable this particular part
> of the warning, which has been split off into a separate diagnostic so
> that the entire warning does not need to be turned off for clang.
>
> Cc: stable@vger.kernel.org
> Link: https://github.com/ClangBuiltLinux/linux/issues/887
> Link: https://github.com/llvm/llvm-project/commit/2a41b31fcdfcb67ab7038fc2ffb606fd50b83a84
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Makefile b/Makefile
> index 86035d866f2c..90e56d5657c9 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -748,6 +748,10 @@ KBUILD_CFLAGS += -Wno-tautological-compare
>  # source of a reference will be _MergedGlobals and not on of the whitelisted names.
>  # See modpost pattern 2
>  KBUILD_CFLAGS += -mno-global-merge
> +# clang's -Wpointer-to-int-cast warns when casting to enums, which does not match GCC.
> +# Disable that part of the warning because it is very noisy across the kernel and does
> +# not point out any real bugs.
> +KBUILD_CFLAGS += $(call cc-disable-warning, pointer-to-enum-cast)
>  else



I'd rather want to fix all the call-sites (97 drivers?)
instead of having -Wno-pointer-to-enum-cast forever.

If it is tedious to fix them all for now, can we add it
into scripts/Makefile.extrawarn so that this is disabled
by default, but shows up with W=1 builds?

(When we fix most of them, we will be able to
make it a real warning.)


What do you think?

Thanks.




>  # These warnings generated too much noise in a regular build.
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200308073400.23398-1-natechancellor%40gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARcTHpd8fzrAhFVB_AR7NoBgenX64de0eS2uN8g0by9PQ%40mail.gmail.com.
