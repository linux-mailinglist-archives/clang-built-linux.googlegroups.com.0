Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP5752BAMGQESNBYQTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCB63482CF
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 21:23:28 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id d16sf1772190lja.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 13:23:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616617408; cv=pass;
        d=google.com; s=arc-20160816;
        b=OfVFcnJ2AIR/pPxAK8y/7I8hbnDzlp/x+KKYPk7S7+HPwgEPoowUquSIw+qBfh2GfJ
         IG43ghRwstA9upht7QA8p/JblHIbCJ08ivpqhMu26rV25gf8OipHvStD/UA6X58fxvIw
         czTBvLvuIORxgWQbIdzjDEhkJ3JdKLm4ZIXzMUIkKwTEdosVvISrw8vvPx3HM4t5rN10
         oU5/egfq6/uydrXTdD5I94STkNPJK7qfSo6pZ/MTSiKbNeOkoKVp/LG68lI8EhOlcSkM
         ANE8zhJAqnCpUPV4+2VEOQ8SjGC2Knat0CZvQI0ylz66elslk7vgGMKWFqJceSARz2AQ
         yqUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=+TMlbyQ9voK2Kur6bNZIk3Y/CLlmY7THMWGs5KCLoIA=;
        b=Dm+ZcvVL/OQ2T5pmocdUqfYja9LVSNETdTPqfs0RVsXSwDLfTfzcCruP+DrlQhTLDJ
         ZRL4Lnmo83O47BonpYj8UkTsCZXKPwZljorx1jkZt154m+vZEc0SBmT4JxU2ZpDP70Az
         rdPcgnuP425Wfd0nT/Uv+gIPz3maOoWD25MH+U/A1KJLyq072rnj0ez8UJhjRKuvb6Qg
         KdyGjriIPtpfPm7bb1OfMSbWlMvSxJe0HTmG7bAys/2TnZZmbal53RfaCULB9376CQox
         VU5dXortKfM4Yhk/Z1ui36YIvLQOxbC00C+X7dUPmhdNCtTz80ajGyZIISVvTQYIiRpp
         kdQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qd0xWr49;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+TMlbyQ9voK2Kur6bNZIk3Y/CLlmY7THMWGs5KCLoIA=;
        b=dtitpRV4Bbuw8CiiMATGsTaksdk6E7ffnCWwOhNTO7vAu4aQrWcBC/I8TNQVDRshHy
         ZeqPdeLPqzlPQ/B3cfiCG1NVWKHFen6tKnUNSpwjO2EfrHedxSFzIUkZvqOhgiUMadCS
         mT0JqODyqGdkD4h6r5SIrfS7q4C4jo5V86mJZdBqe8JZp26QU8WYshy5Vs0dcczxhJxR
         xPTZQqYCDTe96UmDLCmuJxHcaTlyT6Y6OpPzcG5iB4GBrF4UEkKUEW3wBcyj0diw8jDb
         StjnnwdWPQ1MM0kjhH314EaKYza1x+CXGG2sxSMy7/qrHg79XvhVHx1JLanTOaUxy1JO
         KU8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+TMlbyQ9voK2Kur6bNZIk3Y/CLlmY7THMWGs5KCLoIA=;
        b=EpZXva6MZh28GSGTMJtQtobYNQh29rtLABDyYSGmbjzmfuWCJH9ftP2wDob8+gA6/u
         i9N2eDv8JSks3JoYuETQa12jiLMN4NxdZPJtACvpsM4bnpXVanq3Mocd480ufbw/mwim
         iwiBdwDhzw+tiSZieYsVBZ1tMf9dYMqq6N8OTvx6LLRyP179KPLHNkNln83zqs1f7gbO
         pLeAQQVRLUYqrCpMwgBRDymgnWL4Ml3q/rJzukV7j/Uoe7vkzW4ZOkNBOd7WRPKshQic
         /wDNb5Qi+QZ4lWTdz4RtiINLyaUgl1H7szGSiJxZVCjZ5dle7gZ7m/AGxct8QOGdWQCs
         P6hw==
X-Gm-Message-State: AOAM532y4FTCh1NYxe6MUNU0VPacP9JegJkfzMT7ObneaULGcbNCkQjh
	XXJJfFoEMjznppe+Fx9gd7g=
X-Google-Smtp-Source: ABdhPJyiy48pPIw2zKSl2leQ69ERTMHOh3XlMFzyrgnaK70S51dS6qWSRgGdKzOjOTKj49C1v1bnnw==
X-Received: by 2002:a2e:2a44:: with SMTP id q65mr3326543ljq.238.1616617408113;
        Wed, 24 Mar 2021 13:23:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3c10:: with SMTP id j16ls774407lja.2.gmail; Wed, 24 Mar
 2021 13:23:27 -0700 (PDT)
X-Received: by 2002:a2e:9c8e:: with SMTP id x14mr3228450lji.312.1616617407065;
        Wed, 24 Mar 2021 13:23:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616617407; cv=none;
        d=google.com; s=arc-20160816;
        b=im0YWl2z2TrFVt5Z0Pi5PyuDwC017xikiGJi3jJovIFl1SJdypCZ3Qad/SZK8J8j6V
         RpAHaAdpoSIB4GCZPvipb+ER7im+D8Qht4HTMAQLg/SwLkC2Xw3N2xohEu9m8oyHi5Uw
         4Zw7xv4/fd2JdKsFEUoBHwmgMsxmREeFXSmf+m28tnr/UjGOPpzpuCuMXJaO6IXw8n5a
         00boR4aSwFsE0lOvMadwUREiYweEIriRyW6XM3YYh5IqIKfiAaVcY8NGeN0opl8Scvpu
         Iwjrp53ZKrZdZFR4NPnvGgzIrx8icCBb03QJ28TvF3BO74Ybp7NuFeavBoNVJAXUIMHl
         YHaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=z2cOo7dgV9GEA/mIyKRHOhTNCl8uPrMA+p9JePg2CIA=;
        b=hII41mSr5NT9k8GVgwrpuYaENsPTjmGkEFl60pnwl6hPXoAMb3hZgdwm49ryGAzMQW
         BNkWTb4+YUOzmlYLccvJFXxnANitk3BmRPwGc+ZsCzOBSpwTB/KWliXEbk8cif7S0AVY
         n0H8USCo9llkv0H7Ulh09WpmlrtAt93PwPxXxxsgx1wBAVC+lQuEOCT4zJ6vZgx6jGYu
         L5WmroVtn4PI3VFTDdg45bzQLWyoEPLRwG56t/wCaEcF0JDgCK1uldpEbKLKTz2t4tK5
         3TnZkxiOFdnTS9ehled08+5a3E0vbiCr6iVRXqv13r8BfIKJidMXRKB9TVMwC2YcvAyD
         9W9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qd0xWr49;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id f21si169668ljg.6.2021.03.24.13.23.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 13:23:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id g8so26795136lfv.12
        for <clang-built-linux@googlegroups.com>; Wed, 24 Mar 2021 13:23:27 -0700 (PDT)
X-Received: by 2002:a05:6512:985:: with SMTP id w5mr2825754lft.122.1616617406625;
 Wed, 24 Mar 2021 13:23:26 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000064b16905be4e0722@google.com>
In-Reply-To: <00000000000064b16905be4e0722@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Mar 2021 13:23:15 -0700
Message-ID: <CAKwvOdkNBNVffKhO5TBq4D8s=U+KFC8miNkngFpJwAdVYKTWmg@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - March 24, 2021
To: Nick Desaulniers <ndesaulniers@google.com>, Android-LLVM <android-llvm@google.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Hongtao Yu <hoy@fb.com>, 
	Yonghong Song <yhs@fb.com>, Wenlei He <wenlei@fb.com>, Remi Duraffort <remi.duraffort@linaro.org>, 
	Antonio Terceiro <antonio.terceiro@linaro.org>, Mark Brown <broonie@kernel.org>, 
	Arnd Bergmann <arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qd0xWr49;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
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

On Wed, Mar 24, 2021 at 1:20 PM <ndesaulniers@google.com> wrote:
>
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>
> March 24, 2021
>
> LLVM_IAS=3D1 ARCH=3Darm landing in Android
>
> Probably going to skip 4.19.y, one last assembler bug won't be ready in t=
ime, 27 kernel backports required.
>
> https://reviews.llvm.org/D98916
> https://lore.kernel.org/stable/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck=
-us.net/
> https://lore.kernel.org/stable/CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUx=
sO2vDcnQA@mail.gmail.com/
>
> 32b PPC BE builds spun down in CI
>
> https://github.com/ClangBuiltLinux/continuous-integration2/pull/111
> https://github.com/ClangBuiltLinux/linux/issues/1292
> https://bugs.llvm.org/show_bug.cgi?id=3D49610
>
> Riscv crash on -next, requires earlycon to get more info (or GDB)
> CFI patches need help review+test
>
> V3: https://lore.kernel.org/lkml/20210323203946.2159693-1-samitolvanen@go=
ogle.com/
>
> PGO patches need help review+test
>
> https://lore.kernel.org/lkml/20210226222030.3718075-1-morbo@google.com/
>
> Wenlei, Hongtao, Yonghong (ThinLTO+pahole)
>
> https://reviews.llvm.org/D80765
> Duplicate type info, skip emitting it for cross TU defined types? (TODO: =
Nick: talk with dblaikie@)
> Inlining of global functions means they can=E2=80=99t be traced; __no_inl=
ine_for_lto __attribute__((noinline))? Prevent inlining in LLVM?
>
> R=C3=A9mi, Antonio
>
> TuxTest, TuxRun demo
> https://gitlab.com/Linaro/tuxsuite#tuxtest TuxRun not yet ready, stay tun=
ed
> Would allow us to drop distributing QEMU, simplify workers in CI
> Plan file support to be added to tuxsuite, months out though
>
> (Arnd) warning promotions
>
> Warnings were disabled in top level Makefile, but not enable-able via W=
=3D123
>
>
> ________________________________
>
> Sent by http://go/sendnotes



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkNBNVffKhO5TBq4D8s%3DU%2BKFC8miNkngFpJwAdVYKTWmg%4=
0mail.gmail.com.
