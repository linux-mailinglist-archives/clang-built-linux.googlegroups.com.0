Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKGC2OBAMGQEVMQXIAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4E434236D
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 18:36:40 +0100 (CET)
Received: by mail-ej1-x638.google.com with SMTP id rl7sf18491327ejb.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 10:36:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616175400; cv=pass;
        d=google.com; s=arc-20160816;
        b=oyHi1MKLxIdg8eeL/Duxp8yM/nRUZAoC/TzQlQkiX1CI6ctAkGgUML8NoH4zOm/65X
         2C3QU656RhzGOQfA7ymmr6LlJDOwPS8Ws7wDS+ybLCqiI0nMTgpUn3tm0uyliG+L61J9
         5BVUwh3LEfQTMel/iZMrC7hbJLxJj1LqVdobiSfOg03VH91tn/Sw5fSDF/cYJJHQTDDk
         GIirUItCY76o99plXVRNM+qp5ixqO0VnOmPZLZkUwT2eykienMz9Coa6XnNr+BEjJyFq
         rCTOE3Uxi1ZDPUmrNeUn+MqhOZpfsTEVZaTnxprhJ0085c5qtNhN16xG3sOyGWcO+xcS
         8BQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=es1yFic+QqhgzaIhczyBlIsJN7/JIMqw0prAn4YFbn8=;
        b=rEGafhLa2X7+vTOE7scp+Nauz3m3UurIMswVVrf71cNuqKGWOtoIkprl1UlzzqsUFs
         HSfJSWoqneqYrTU99KrmHvBQh5hzdHVsVIlpKbAet8tGaaQA4JzlqUTqiZHN+YVaNpQb
         +G4+Eg8EOq71UY9BoY/ShVtphgcYhC7KCSEei07YudHCtlLwTod/2K1o2aj0rmPfgKNu
         X6GUcXJ/SKVtAn2gGLIOWmXkukW31Zgzui5DHy8bARbPGP/orogMJ/F7iN209UanK30T
         Oq6Ut2hHAinpPmyfk5vUpw9yA91qJTE3PL3Q4As+rMY+8xe4AlIiaTUrDbhGn0PZ75iL
         5Yqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IGuDs/Zr";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=es1yFic+QqhgzaIhczyBlIsJN7/JIMqw0prAn4YFbn8=;
        b=q/QtZnGvhLOD5ZL75GwN7t3bcZuAl35kUP8o6rPkiDM3Wg9GPVhskhL6ol8yDFKPbI
         nzrq+Qp7m9rnITfpI7c0J4WbL0dOeusIkKhUZs+v5C/0+aMNVvMgjudRShst0TSbfN4A
         ktKf1H7mgP67kiNMQbNTsIcyvtk0w7etiDdeDduKLVPb5MpLG++yaWrvOw1de98QuI+Y
         b+khXEGpORZXdFLf8oMpRKMgFct6ZDcBmmUEmXw3j1TqSdsXFVi3HEy/cMU5kyEyz+Wp
         rWfRAx4pwYry2joVU+EXY9eGt+R9zyd+WA713N9F1LALg/GGD8Ar4HxpZW9O+Kz8YMXq
         Xwkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=es1yFic+QqhgzaIhczyBlIsJN7/JIMqw0prAn4YFbn8=;
        b=kgH+khAfg/JL+hPC9nxM7y+mjyo9syPvVOjhn8rVNcilsPyyc22kZH/I9OPwSDpT0i
         mtf1IpLpCX0Ze2KVz7i8PxqYJjBUXSU+PFN1B88qZz55o72bKlcVEL0DRFogVCLrFIzy
         4Kc0Z9ucb11v37m5SNG/bwOcLoCBY+XhYALpsU9ihFiFT9s+vTuOOhcOpAYVRezfOlFE
         YNIwU/DUquUhu5nWU9B116Az99gDjpGMlsP81ZDE8u9RlzeU8vg9eyU8q3gHPZRgPNem
         FOTel66p2JyrY4wiy1pOZwG4y00S4x6IIoZt/x+I1e6bYVpD+gPuNczFZP15nnqAR0zH
         Ztgg==
X-Gm-Message-State: AOAM530wc/MVsZnuZ+4P3ak7TI8jUo2WRf/xURAo+ZFSeGKbY3v9eGr1
	nsNzDvkgpXhCaZji8bZFehM=
X-Google-Smtp-Source: ABdhPJwYMnRBwZ4WWNuzLGkCtpLrAfTTiGGRVk7ag/H6O2T82oUaPfQ7lDXsGJs/9JhA1+Fbqyzfmg==
X-Received: by 2002:a05:6402:12d5:: with SMTP id k21mr11131356edx.318.1616175400746;
        Fri, 19 Mar 2021 10:36:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:40d2:: with SMTP id a18ls3674597ejk.8.gmail; Fri, 19
 Mar 2021 10:36:39 -0700 (PDT)
X-Received: by 2002:a17:907:76ed:: with SMTP id kg13mr5342797ejc.99.1616175399861;
        Fri, 19 Mar 2021 10:36:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616175399; cv=none;
        d=google.com; s=arc-20160816;
        b=N0R7Lw0Vi87lKaEEbQDCbIG7uPr8s9BenQ6SNph3I6ftVkJS36Ttkd6+42uhAlpZ6D
         z4Dr/tjAekLzugvTd5CrEXtnNq20TZxatkKBGm55zFDXReU1cnFa1gSjpFpyNXWyrNvn
         D/AxTc14AxvQh1WPelAdUJ3EzzOIgd2lcJckKsEiY81599Ljx/WXyPWFVkHpR7BsVMta
         RmkfbSVBb3afA8ryVERd2zzqYmmMumTWlDXV97ZFYVdqEtSOPIJI1DOCBQ94AltDnGb7
         OJbq3ttcrULmSSlOoNx1txLjv8/Tru+Bjio5yP0gtJtZeUcbIFtuuRQV+GIpn+qm3AK0
         AJnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lWvA/48XFK9LthHD8XWNH2G9h2Q/D7pf8r0WoDKA8qA=;
        b=xjpHdgF2SISMs6St6vE1wyE7achOHWpEDkaWvymzbYkKkMHQbkz1GdAMTUYBG+z8JV
         ocbNpoJ0H7FzzlFggDUpQU89E5OJ6Olmn2Dl5pCrGw/EWoFRRkwsiT+ee+TCBlOlxfRw
         X/QEPCVcMVzR8+ESo58IDvpTf7xjVFz6gVhyty/1e/qd5wfATBhq22prmhpyifkgEAlz
         vPw99wk4wDZI0G/X8pv8qicoLzBDb2aV6/FRuK89c9qdwlmUtX3MrxgOZfqGFKI6hq7f
         NWZXJoCUF/KYCwKdlIJ85a2eL5S81dVi72rfxnAj6KGsW699dsNMWIPUtdZiPQyYNO3z
         d7kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IGuDs/Zr";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id w5si197804edv.1.2021.03.19.10.36.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 10:36:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id g8so4087429lfv.12
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 10:36:39 -0700 (PDT)
X-Received: by 2002:a19:430e:: with SMTP id q14mr1533339lfa.374.1616175399402;
 Fri, 19 Mar 2021 10:36:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210319165334.29213-1-andre.przywara@arm.com> <20210319165334.29213-11-andre.przywara@arm.com>
In-Reply-To: <20210319165334.29213-11-andre.przywara@arm.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Mar 2021 10:36:28 -0700
Message-ID: <CAKwvOdkuvUPezqZWDE=zvCKMZ_b+mevu-gsh-oJT1SPv7xUZOQ@mail.gmail.com>
Subject: Re: [PATCH 10/11] kselftest/arm64: mte: Fix clang warning
To: Andre Przywara <andre.przywara@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Shuah Khan <shuah@kernel.org>, Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <broonie@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="IGuDs/Zr";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Fri, Mar 19, 2021 at 9:53 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> if (!prctl(...) == 0) is not only cumbersome to read, it also upsets
> clang and triggers a warning:
> ------------
> mte_common_util.c:287:6: warning: logical not is only applied to the
> left hand side of this comparison [-Wlogical-not-parentheses]
> ....
>
> Fix that by just comparing against "not 0" instead.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  tools/testing/selftests/arm64/mte/mte_common_util.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/testing/selftests/arm64/mte/mte_common_util.c b/tools/testing/selftests/arm64/mte/mte_common_util.c
> index aa8a8a6b8b6d..040abdca079d 100644
> --- a/tools/testing/selftests/arm64/mte/mte_common_util.c
> +++ b/tools/testing/selftests/arm64/mte/mte_common_util.c
> @@ -284,7 +284,7 @@ int mte_switch_mode(int mte_option, unsigned long incl_mask)
>
>         en |= (incl_mask << PR_MTE_TAG_SHIFT);
>         /* Enable address tagging ABI, mte error reporting mode and tag inclusion mask. */
> -       if (!prctl(PR_SET_TAGGED_ADDR_CTRL, en, 0, 0, 0) == 0) {
> +       if (prctl(PR_SET_TAGGED_ADDR_CTRL, en, 0, 0, 0) != 0) {

How about `if (prctl(...)) {`?

>                 ksft_print_msg("FAIL:prctl PR_SET_TAGGED_ADDR_CTRL for mte mode\n");
>                 return -EINVAL;
>         }
> --
> 2.17.5
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkuvUPezqZWDE%3DzvCKMZ_b%2Bmevu-gsh-oJT1SPv7xUZOQ%40mail.gmail.com.
