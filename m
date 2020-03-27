Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ747DZQKGQEN3SKZ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A42195D3E
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 18:56:57 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id c1sf8821001qkg.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 10:56:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585331816; cv=pass;
        d=google.com; s=arc-20160816;
        b=VcKYYJo92aDijFAS/cO1eUeoh+gWKAaXeXYgq1jJKz/nnuF2weRt7hOlqBt3Bizipy
         i7Ty6WSZkOhwD3ZVRhZ9dLWuTEMAITIzbxuD5cbXiRGblDpRbnLxZ8YH7OwAndDFYBmT
         D8/Ptho4P6f42iGfUWduK9UDSRXEKHV8hacMmxcndkLWeQinjgpXbmqZGnYzYywJAa2t
         +ITIMCZ0jDfR7WwIpCcque07QOJQjTtSWlj2RXu9UKX8tMgS9vkfznPkDXIgHUO4wEA2
         nhCjwf4Dzk4jk01r/Pw9IvoY98lZzx3lHH5pux1OUpx/QAzraVCUGVvNb3Zs14xFHjWl
         l0vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ogiqlsrMhWkmrLLFC24UglNop355guLFaTHfPRWozS0=;
        b=F1N861PkUiZrD8NmGYjdQo8Ya8Az8jXpUYYRiX6rCd5GAS4U+Kqzpcl5VIfHVJNFlq
         M0I1EHUtxKjl4RSbr9uaEx09cnmVwBwMNAqTTeWlqd+9GMahIJDR6I/arlmW4MNJLZSh
         iGuqIQ8wQ5yjXgo8Zl0r6fUUl625IjY+Zqk30vsjtXIIB59H4qRa9Ow0iJdrVsdmBF20
         0KBLU0fUL5MQPpvr/+CRp8+VNAoFgwqTbiEcQbiGjkpyXJZYU4LOHwhdkc7NgAAv3HBC
         kivRQX0xD9eUv5TJXBYe3aT6k20gk9ITHHb/ucNNCBVXaSi2nBMQoJPP/0dDE2wJRbaA
         89nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hVnkpZG+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ogiqlsrMhWkmrLLFC24UglNop355guLFaTHfPRWozS0=;
        b=Yvc6DrAIbQD5e+YeFpsDa56kyEx7aFkhnDS4N571wH4ECZe6s2iJO9e9LwtZb2Ck2S
         ENoCdvohbyneXOmfI8jTA4U/jGCZoJxgu0i6FVUs2ScoNH5tLZ1VKXGQxpVv5Cou3rya
         MOo3PtmNuWuTGxJ+mjlX5Ba5yyFk7bAjYlBgXQ3TTGp41ABuOwrV8rM33AXuoqM3BfhD
         Wql2CwYLy3L+HZgd7z5NNkNHzehS4hs0XqB7Es9bYPj4X7OGG9AghVA1IyNNEhQK1yep
         UtefdHLEvaBfkJsbH6d0c/STdx2V9wkgrhPnHB8BEvs/NGVQXufjaVBm/nN4CmDTcDn9
         eGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ogiqlsrMhWkmrLLFC24UglNop355guLFaTHfPRWozS0=;
        b=i0BiOM5rY8zLNUE698KCuz8yLU/GAPND0srYrbDAYYVfwi0RbyU2uPkBuxckqYv4LI
         ni1JEbwoQlLLY+u1GG2H4cmfTlr+x4kfn5YT2oMDTgDl1tEJh+kmcR0jrRHo+j6uso9I
         irS0jhCMc7xS24EYHouPGbBdsZw2+I4bNNHPAfJy1hVrLWegbiRsh1BTivr1aZg8PUhH
         Dj/DaWSN2gd9b4j4JFH72LxG32Rk/bMWBa/mRccpAEokOFknnpxCT1lIPkiYaRc+FKpg
         gIHCYV9uwp1R8jkdC42b7GIKX8zty/5yzOOAvmTEgGVNTIb+No6FEzE9GeApwAiPbiyu
         lYtA==
X-Gm-Message-State: ANhLgQ0A1TvWlNCHZ+YpRf4d+c4+uDI/HfPk+lck+2SzvNyT78mbA1WN
	KydvW6YJVqNaiHNGsqFUse0=
X-Google-Smtp-Source: ADFU+vtJOOm4TYGLHYRYobdnKxtN1g7jGEkNhVMQCB+3hveqWl6coX63LBsbmBKhKueDQOCSDHgN+A==
X-Received: by 2002:ac8:45ce:: with SMTP id e14mr439353qto.304.1585331815711;
        Fri, 27 Mar 2020 10:56:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b3d4:: with SMTP id b20ls2573366qvf.11.gmail; Fri, 27
 Mar 2020 10:56:55 -0700 (PDT)
X-Received: by 2002:ad4:4687:: with SMTP id bq7mr404367qvb.248.1585331815201;
        Fri, 27 Mar 2020 10:56:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585331815; cv=none;
        d=google.com; s=arc-20160816;
        b=lD6kGequ8n0+CVbp0X3GFXD1/kko4LsNGHrTJ9tHTbA7Cy4yfP92CESi2sqIitRzXL
         /yKXsg4tFwgIaXB3skspCJZKFJ6x2rEZYAZ6857EoCJ+FbR7eIiNz5Lcd7erWZLIoYYB
         Rt0RfW3I7UeEDkMippJyBBUH6hZCfGP9C7vUxJbh/xbT9zNkl+ODIzdD4jmtnuXZbghw
         KoWqVS+nOBYeMEfzxhIudYSl+jNnxbkV//PsIOkvK8bBO09fFcfTO9qhOCY2bs8u/r79
         T1mRGUVdx6QaFXFibfxLmJ/VP6yJnHz+5L6CfoGI4YaitQpvZr25rIYc5F8ZVbtOpFoZ
         T6FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dN7OcvdZqaIlOIFAOE0ptlfWiGblwLXM29r2aiZEsig=;
        b=Lg2QFlKUvCn3sJh2Ycx+lOWexQ1Q26zWYHEv2pt+RoL7R3moTltouJ0H2b779m4ug8
         v6P2dmak7kxJNm104EktV+Xp2oeNOhr2sbEUxgxSJ28KjyQPmbc9p82kM7JbOvE3FVOk
         fBWJoCszP+L20XOC5L46x+pFYoRuwOtXPiwS1MMXzloQ0qpcmT8PhiB5B2Tuar/Ql0Sp
         8BGqZDsgaPScLrrbjcOXjvs4/R3voI5+yx0wKDpp8GqTD+ZJOj+DQhgEWPpT+nhvN44p
         RG9L5AYsbrNExJGAMH6a53oOTepID64LvxlRCepYxOl9p5dWSirYpah7AZKeyPfPnb+W
         OKdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hVnkpZG+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id d193si373347qke.1.2020.03.27.10.56.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 10:56:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id w3so3715522plz.5
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 10:56:55 -0700 (PDT)
X-Received: by 2002:a17:90b:8d2:: with SMTP id ds18mr562074pjb.186.1585331814147;
 Fri, 27 Mar 2020 10:56:54 -0700 (PDT)
MIME-Version: 1.0
References: <5e7cb175.1c69fb81.d10e.6d4a@mx.google.com> <CAKwvOdkTh+uHOK0bd5UGGfYiFQU+MkeT71Yy7Ggof9FkQHCG-g@mail.gmail.com>
 <64828a9f-9983-d731-d52e-3d753fc035f6@collabora.com>
In-Reply-To: <64828a9f-9983-d731-d52e-3d753fc035f6@collabora.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 27 Mar 2020 10:56:43 -0700
Message-ID: <CAKwvOdmRN6H6LMSc2o=XYVzrzSqDCW3JqLMxzWDiwa+XogyggA@mail.gmail.com>
Subject: Re: next/master build: 227 builds: 17 failed, 210 passed, 41 errors,
 497 warnings (next-20200326)
To: Guillaume Tucker <guillaume.tucker@collabora.com>, Kevin Hilman <khilman@baylibre.com>
Cc: kernelci@groups.io, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hVnkpZG+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631
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

On Thu, Mar 26, 2020 at 1:54 PM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> On 26/03/2020 18:49, Nick Desaulniers wrote:
> > Oh no, did the format of the logs change with the latest deployment?
> > I expected to see the breakdown of which builds had which
> > warnings/errors, which is very fast for me to triage.  If it was an
> > intentional change, can we please bring those back?
>
> Erm, yes I think it was this change:
>
>   https://github.com/kernelci/kernelci-backend/pull/222

>> The "detailed" section of the email reports is not useful,

I was grepping these daily to find new warnings popping up.

>
> I probably need to have several different templates, and the
> ability to choose which one to use for each report.  We'll need
> this kind of flexibility too for other test email reports.
>
> However you can still see the list of clang builds here:
>
>   https://kernelci.org/build/next/branch/master/kernel/next-20200326/
>
> if you type "clang" in the search bar.  Is that better?

No.  The above change completely breaks my workflow, and the above
link is not a substitute.  In the previous reports, I would get a
handy daily reminder, that I could quickly ctrl+f,clang,ctrl+g and
find issues specific to Clang.

With the above link, I need to:
1. remember to go look at the site each day (I won't; I live out of my inbo=
x)
2. search for linux-next builds (I'm not sure how to even find the
linux-next builds here. Searching for "next" turns up tons of
*branches* with next in the name. Where's the next *tree*?
3. I have to click through to see warnings, not all are listed in the
preview (example: allmodconfig =E2=80=90 arm =E2=80=90 clang-9 on
https://kernelci.org/build/next/branch/master/kernel/next-20200326/ is
red but says 0 warnings 0 errors. But if you click through in the logs
you see a failure in modpost).
4. clicking back resets the filter, so you have to open multiple tabs
to the reports.

Compare the above, to ctrl+f,clang,ctrl+g in a daily email.  It's
super painful.  It also makes the current email reports useless to us.

I'm aware of every bug in
https://github.com/ClangBuiltLinux/linux/issues that's open and every
bug we've ever had there.  I need to be able to quickly spot if
there's something *new* on the Clang side and file a bug to follow up
on it when I have time, then quickly move on to the next fire.  I was
also able to quickly grep and see if the issue was observed with GCC
as well, or just Clang.

I strongly agree with Broonie emailing that a successful build
occurred is noise; we disable this in our travisci:
https://github.com/ClangBuiltLinux/continuous-integration/blob/a0e363f268da=
b899a6b259b24639d02b73401526/.travis.yml#L211

But I'm afraid this change throws the baby out with the bath water,
and it really really hinders my ability to triage bugs and slows me
down.  Please consider reverting.

>
> Guillaume
>
>
> > On Thu, Mar 26, 2020 at 6:43 AM kernelci.org bot <bot@kernelci.org> wro=
te:
> >>
> >> next/master build: 227 builds: 17 failed, 210 passed, 41 errors, 497 w=
arnings (next-20200326)
> >>
> >> Full Build Summary: https://kernelci.org/build/next/branch/master/kern=
el/next-20200326/
> >>
> >> Tree: next
> >> Branch: master
> >> Git Describe: next-20200326
> >> Git Commit: 89295c59c1f063b533d071ca49d0fa0c0783ca6f
> >> Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-ne=
xt.git
> >> Built: 7 unique architectures
> >>
> >> Build Failures Detected:
> >>
> >> arm64:
> >>     allmodconfig: (clang-9) FAIL
> >>     allmodconfig: (gcc-8) FAIL
> >>
> >> arm:
> >>     allmodconfig: (clang-9) FAIL
> >>     allmodconfig: (gcc-8) FAIL
> >>     cm_x300_defconfig: (gcc-8) FAIL
> >>     em_x270_defconfig: (gcc-8) FAIL
> >>     eseries_pxa_defconfig: (gcc-8) FAIL
> >>     mmp2_defconfig: (gcc-8) FAIL
> >>     pxa168_defconfig: (gcc-8) FAIL
> >>     pxa910_defconfig: (gcc-8) FAIL
> >>     pxa_defconfig: (gcc-8) FAIL
> >>     qcom_defconfig: (gcc-8) FAIL
> >>     vf610m4_defconfig: (gcc-8) FAIL
> >>
> >> mips:
> >>     mtx1_defconfig: (gcc-8) FAIL
> >>
> >> riscv:
> >>     allnoconfig: (gcc-8) FAIL
> >>     tinyconfig: (gcc-8) FAIL
> >>
> >> x86_64:
> >>     defconfig: (clang-9) FAIL
> >>
> >> Errors and Warnings Detected:
> >>
> >> arc:
> >>
> >> arm64:
> >>     allmodconfig (gcc-8): 2 errors
> >>     allmodconfig (clang-9): 2 errors
> >>     defconfig (gcc-8): 29 warnings
> >>     defconfig (clang-9): 29 warnings
> >>     defconfig (gcc-8): 29 warnings
> >>     defconfig (gcc-8): 29 warnings
> >>     defconfig (gcc-8): 29 warnings
> >>
> >> arm:
> >>     allmodconfig (gcc-8): 2 errors, 18 warnings
> >>     allmodconfig (clang-9): 2 errors, 21 warnings
> >>     aspeed_g4_defconfig (gcc-8): 4 warnings
> >>     aspeed_g5_defconfig (clang-9): 4 warnings
> >>     aspeed_g5_defconfig (gcc-8): 4 warnings
> >>     bcm2835_defconfig (gcc-8): 14 warnings
> >>     cm_x300_defconfig (gcc-8): 1 error, 2 warnings
> >>     em_x270_defconfig (gcc-8): 1 error, 2 warnings
> >>     eseries_pxa_defconfig (gcc-8): 14 errors, 12 warnings
> >>     integrator_defconfig (gcc-8): 1 warning
> >>     mmp2_defconfig (gcc-8): 1 error
> >>     multi_v4t_defconfig (gcc-8): 1 warning
> >>     multi_v5_defconfig (gcc-8): 4 warnings
> >>     multi_v5_defconfig (clang-9): 4 warnings
> >>     multi_v7_defconfig (gcc-8): 18 warnings
> >>     multi_v7_defconfig (clang-9): 20 warnings
> >>     multi_v7_defconfig (gcc-8): 18 warnings
> >>     multi_v7_defconfig (gcc-8): 18 warnings
> >>     multi_v7_defconfig (gcc-8): 18 warnings
> >>     multi_v7_defconfig (gcc-8): 19 warnings
> >>     pxa168_defconfig (gcc-8): 1 error
> >>     pxa910_defconfig (gcc-8): 1 error
> >>     pxa_defconfig (gcc-8): 3 errors, 6 warnings
> >>     qcom_defconfig (gcc-8): 1 error
> >>     vf610m4_defconfig (gcc-8): 4 errors, 5 warnings
> >>
> >> i386:
> >>
> >> mips:
> >>     32r2el_defconfig (gcc-8): 3 warnings
> >>     32r2el_defconfig (gcc-8): 3 warnings
> >>     allnoconfig (gcc-8): 1 warning
> >>     ar7_defconfig (gcc-8): 2 warnings
> >>     ath25_defconfig (gcc-8): 2 warnings
> >>     ath79_defconfig (gcc-8): 2 warnings
> >>     bcm47xx_defconfig (gcc-8): 2 warnings
> >>     bcm63xx_defconfig (gcc-8): 1 warning
> >>     bigsur_defconfig (gcc-8): 2 warnings
> >>     bmips_be_defconfig (gcc-8): 1 warning
> >>     bmips_stb_defconfig (gcc-8): 1 warning
> >>     capcella_defconfig (gcc-8): 2 warnings
> >>     cavium_octeon_defconfig (gcc-8): 2 warnings
> >>     ci20_defconfig (gcc-8): 3 warnings
> >>     cobalt_defconfig (gcc-8): 2 warnings
> >>     cu1000-neo_defconfig (gcc-8): 1 warning
> >>     db1xxx_defconfig (gcc-8): 1 warning
> >>     decstation_64_defconfig (gcc-8): 2 warnings
> >>     decstation_defconfig (gcc-8): 2 warnings
> >>     decstation_r4k_defconfig (gcc-8): 2 warnings
> >>     e55_defconfig (gcc-8): 2 warnings
> >>     fuloong2e_defconfig (gcc-8): 2 warnings
> >>     gcw0_defconfig (gcc-8): 1 warning
> >>     gpr_defconfig (gcc-8): 2 warnings
> >>     ip22_defconfig (gcc-8): 2 warnings
> >>     ip27_defconfig (gcc-8): 2 warnings
> >>     ip28_defconfig (gcc-8): 2 warnings
> >>     ip32_defconfig (gcc-8): 2 warnings
> >>     jazz_defconfig (gcc-8): 2 warnings
> >>     jmr3927_defconfig (gcc-8): 1 warning
> >>     lasat_defconfig (gcc-8): 1 warning
> >>     lemote2f_defconfig (gcc-8): 2 warnings
> >>     loongson1b_defconfig (gcc-8): 2 warnings
> >>     loongson1c_defconfig (gcc-8): 2 warnings
> >>     loongson3_defconfig (gcc-8): 2 warnings
> >>     malta_defconfig (gcc-8): 2 warnings
> >>     malta_kvm_defconfig (gcc-8): 2 warnings
> >>     malta_kvm_guest_defconfig (gcc-8): 2 warnings
> >>     malta_qemu_32r6_defconfig (gcc-8): 3 warnings
> >>     maltaaprp_defconfig (gcc-8): 2 warnings
> >>     maltasmvp_defconfig (gcc-8): 2 warnings
> >>     maltasmvp_eva_defconfig (gcc-8): 2 warnings
> >>     maltaup_defconfig (gcc-8): 2 warnings
> >>     maltaup_xpa_defconfig (gcc-8): 2 warnings
> >>     markeins_defconfig (gcc-8): 2 warnings
> >>     mips_paravirt_defconfig (gcc-8): 2 warnings
> >>     mpc30x_defconfig (gcc-8): 2 warnings
> >>     msp71xx_defconfig (gcc-8): 2 warnings
> >>     mtx1_defconfig (gcc-8): 2 errors, 1 warning
> >>     nlm_xlp_defconfig (gcc-8): 2 warnings
> >>     nlm_xlr_defconfig (gcc-8): 2 warnings
> >>     omega2p_defconfig (gcc-8): 1 warning
> >>     pic32mzda_defconfig (gcc-8): 2 warnings
> >>     pistachio_defconfig (gcc-8): 2 warnings
> >>     pnx8335_stb225_defconfig (gcc-8): 2 warnings
> >>     qi_lb60_defconfig (gcc-8): 2 warnings
> >>     rb532_defconfig (gcc-8): 2 warnings
> >>     rbtx49xx_defconfig (gcc-8): 2 warnings
> >>     rm200_defconfig (gcc-8): 3 warnings
> >>     rt305x_defconfig (gcc-8): 2 warnings
> >>     sb1250_swarm_defconfig (gcc-8): 2 warnings
> >>     tb0219_defconfig (gcc-8): 2 warnings
> >>     tb0226_defconfig (gcc-8): 2 warnings
> >>     tb0287_defconfig (gcc-8): 2 warnings
> >>     tinyconfig (gcc-8): 1 warning
> >>     vocore2_defconfig (gcc-8): 1 warning
> >>     workpad_defconfig (gcc-8): 2 warnings
> >>     xway_defconfig (gcc-8): 2 warnings
> >>
> >> riscv:
> >>     allnoconfig (gcc-8): 1 error
> >>     rv32_defconfig (gcc-8): 6 warnings
> >>     tinyconfig (gcc-8): 1 error
> >>
> >> x86_64:
> >>     allmodconfig (clang-9): 4 warnings
> >>     defconfig (clang-9): 2 errors
> >>     tinyconfig (gcc-8): 1 warning
> >>
> >> Errors summary:
> >>
> >>     4    ERROR: modpost: "mtk_mmsys_ddp_disconnect" [drivers/gpu/drm/m=
ediatek/mediatek-drm.ko] undefined!
> >>     4    ERROR: modpost: "mtk_mmsys_ddp_connect" [drivers/gpu/drm/medi=
atek/mediatek-drm.ko] undefined!
> >>     3    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm=
9712.ko] undefined!
> >>     2    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_gl=
obal=E2=80=99 undeclared (first use in this function); did you mean =E2=80=
=98spin_lock=E2=80=99?
> >>     2    /home/buildslave/workspace/kernel-build@2/linux/build/../driv=
ers/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'
> >>     1    sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct =
regmap_config=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=80=
=99
> >>     1    sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct =
regmap_config=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
> >>     1    sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct =
regmap_config=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
> >>     1    sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct =
regmap_config=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
> >>     1    sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct =
regmap_config=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
> >>     1    sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct =
regmap_config=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
> >>     1    sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct =
regmap_config=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
> >>     1    sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct =
regmap_config=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
> >>     1    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=
=80=98wm9712_regmap_config=E2=80=99 isn=E2=80=99t known
> >>     1    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9=
712_regmap_config=E2=80=99 has initializer but incomplete type
> >>     1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration =
of function =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimpli=
cit-function-declaration]
> >>     1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration =
of function =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =
=E2=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-d=
eclaration]
> >>     1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration =
of function =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =
=E2=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-d=
eclaration]
> >>     1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration=
 of function =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memm=
ap_init_zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]
> >>     1    drivers/clocksource/timer-vf-pit.c:194: error: unterminated a=
rgument list invoking macro "BUG_ON"
> >>     1    drivers/clocksource/timer-vf-pit.c:131:8: error: expected =E2=
=80=98;=E2=80=99 at end of input
> >>     1    drivers/clocksource/timer-vf-pit.c:131:2: error: =E2=80=98BUG=
_ON=E2=80=99 undeclared (first use in this function)
> >>     1    drivers/clocksource/timer-vf-pit.c:131:2: error: expected dec=
laration or statement at end of input
> >>     1    clang: error: assembler command failed with exit code 1 (use =
-v to see invocation)
> >>     1    ERROR: modpost: "sysrq_toggle_support" [drivers/tty/serial/se=
rial_core.ko] undefined!
> >>     1    ERROR: modpost: "sysrq_mask" [drivers/tty/serial/serial_core.=
ko] undefined!
> >>     1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm=
9713.ko] undefined!
> >>     1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm=
9705.ko] undefined!
> >>     1    ERROR: modpost: "rd_full" [drivers/gpu/drm/msm/msm.ko] undefi=
ned!
> >>     1    /tmp/cpudeadline-9c7247.s:76: Error: `%ecx' not allowed with =
`orb'
> >>     1    /home/buildslave/workspace/workspace/kernel-build@3/linux/bui=
ld/../drivers/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_p=
ll'
> >>
> >> Warnings summary:
> >>
> >>     125  <stdin>:1520:2: warning: #warning syscall process_madvise not=
 implemented [-Wcpp]
> >>     98   arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_rang=
es_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but its #=
address-cells (2) differs from /soc (1)
> >>     80   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warn=
ing (dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-rang=
es" property has invalid length (12 bytes) (parent #address-cells =3D=3D 1,=
 child #address-cells =3D=3D 2, #size-cells =3D=3D 1)
> >>     25   scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Wa=
rning (dma_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" pro=
perty but its #address-cells (2) differs from /soc (1)
> >>     15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-1=
4: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" propert=
y but its #size-cells (1) differs from / (2)
> >>     15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-1=
4: Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" propert=
y but its #address-cells (1) differs from / (2)
> >>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:=
 Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C=
 address must be less than 10-bits, got "0x40000010"
> >>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-52=
5.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C=
 bus unit address format error, expected "40000010"
> >>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30:=
 Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C=
 address must be less than 10-bits, got "0x40000010"
> >>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-43=
9.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C=
 bus unit address format error, expected "40000010"
> >>     9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointe=
r from integer of different size [-Wint-to-pointer-cast]
> >>     8    WARNING: unmet direct dependencies detected for SND_SOC_WM971=
2
> >>     8    1 warning generated.
> >>     5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_=
ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #size-=
cells (1) differs from / (2)
> >>     5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_=
ranges_format): /soc:dma-ranges: empty "dma-ranges" property but its #addre=
ss-cells (1) differs from / (2)
> >>     4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointe=
r from integer of different size [-Wint-to-pointer-cast]
> >>     2    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at =
least version 4.6 of GCC [-W#warnings]
> >>     2    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_rang=
es_format): /:dma-ranges: Root node has a "dma-ranges" property
> >>     2    WARNING: unmet direct dependencies detected for SND_SOC_WM971=
3
> >>     2    WARNING: unmet direct dependencies detected for SND_SOC_WM970=
5
> >>     2    <stdin>:830:2: warning: #warning syscall fstat64 not implemen=
ted [-Wcpp]
> >>     2    <stdin>:1511:2: warning: #warning syscall clone3 not implemen=
ted [-Wcpp]
> >>     2    <stdin>:1127:2: warning: #warning syscall fstatat64 not imple=
mented [-Wcpp]
> >>     2    #warning This code requires at least version 4.6 of GCC
> >>     1    {standard input}:141: Warning: macro instruction expanded int=
o multiple instructions
> >>     1    sound/soc/codecs/wm9712.c:93:18: warning: excess elements in =
struct initializer
> >>     1    sound/soc/codecs/wm9712.c:91:18: warning: excess elements in =
struct initializer
> >>     1    sound/soc/codecs/wm9712.c:89:16: warning: excess elements in =
struct initializer
> >>     1    sound/soc/codecs/wm9712.c:88:18: warning: excess elements in =
struct initializer
> >>     1    sound/soc/codecs/wm9712.c:87:14: warning: excess elements in =
struct initializer
> >>     1    sound/soc/codecs/wm9712.c:86:16: warning: excess elements in =
struct initializer
> >>     1    sound/soc/codecs/wm9712.c:85:14: warning: excess elements in =
struct initializer
> >>     1    sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=
=80=98struct regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer fro=
m integer without a cast [-Wint-conversion]
> >>     1    sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame=
 size of 1152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-tha=
n=3D]
> >>     1    security/integrity/ima/ima_crypto.c:512:5: warning: stack fra=
me size of 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larg=
er-than=3D]
> >>     1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032=
 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
> >>     1    mm/kasan/common.o: warning: objtool: kasan_report()+0x87: cal=
l to __stack_chk_fail() with UACCESS enabled
> >>     1    include/linux/kernel.h:47:25: warning: excess elements in str=
uct initializer
> >>     1    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%l=
u=E2=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=99, bu=
t argument 2 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
> >>     1    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast fro=
m pointer to integer of different size [-Wpointer-to-int-cast]
> >>     1    drivers/soc/fsl/dpio/dpio-service.c:476:5: warning: stack fra=
me size of 1072 bytes in function 'dpaa2_io_service_enqueue_multiple_desc_f=
q' [-Wframe-larger-than=3D]
> >>     1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame=
 size of 1824 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wfra=
me-larger-than=3D]
> >>     1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointe=
r to integer of different size [-Wpointer-to-int-cast]
> >>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77=
:13: warning: stack frame size of 5648 bytes in function 'calculate_bandwid=
th' [-Wframe-larger-than=3D]
> >>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:30=
14:6: warning: stack frame size of 1376 bytes in function 'bw_calcs' [-Wfra=
me-larger-than=3D]
> >>     1    drivers/firmware/efi/libstub/file.c:123:21: warning: stack fr=
ame size of 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-t=
han=3D]
> >>     1    drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warnin=
g: stack frame size of 1136 bytes in function 'safexcel_aead_setkey' [-Wfra=
me-larger-than=3D]
> >>     1    drivers/clocksource/timer-vf-pit.c:97:20: warning: =E2=80=98p=
it_timer_interrupt=E2=80=99 defined but not used [-Wunused-function]
> >>     1    drivers/clocksource/timer-vf-pit.c:56:19: warning: =E2=80=98p=
it_clocksource_init=E2=80=99 defined but not used [-Wunused-function]
> >>     1    drivers/clocksource/timer-vf-pit.c:131:2: warning: no return =
statement in function returning non-void [-Wreturn-type]
> >>     1    drivers/clocksource/timer-vf-pit.c:126:19: warning: =E2=80=98=
pit_clockevent_init=E2=80=99 defined but not used [-Wunused-function]
> >>     1    drivers/clocksource/timer-vf-pit.c:117:34: warning: =E2=80=98=
clockevent_pit=E2=80=99 defined but not used [-Wunused-variable]
> >>     1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
> >>     1    cc1: some warnings being treated as errors
> >>     1    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_fram=
e()+0x1fa: call to memset() with UACCESS enabled
> >>     1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame(=
)+0x1f8: call to memset() with UACCESS enabled
> >>     1    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_=
frame()+0x1ef: call to memset() with UACCESS enabled
> >>     1    arch/mips/configs/ci20_defconfig:178:warning: override: reass=
igning to symbol LEDS_TRIGGER_ONESHOT
> >>     1    2 warnings generated.
> >>     1    /tmp/test-arm-e023be.s:18788: Warning: using r15 results in u=
npredictable behaviour
> >>     1    /tmp/test-arm-e023be.s:18713: Warning: using r15 results in u=
npredictable behaviour
> >>     1    /tmp/ccbU4HdL.s:18191: Warning: using r15 results in unpredic=
table behaviour
> >>     1    /tmp/ccbU4HdL.s:18119: Warning: using r15 results in unpredic=
table behaviour
> >>     1    .config:1161:warning: override: UNWINDER_GUESS changes choice=
 state
> >>
> >> Section mismatches summary:
> >>
> >>     1    WARNING: modpost: vmlinux.o(.text.unlikely+0x39dc): Section m=
ismatch in reference from the function pmax_setup_memory_region() to the fu=
nction .init.text:add_memory_region()
> >>     1    WARNING: modpost: vmlinux.o(.text.unlikely+0x3684): Section m=
ismatch in reference from the function pmax_setup_memory_region() to the fu=
nction .init.text:add_memory_region()
> >>
> >> ---
> >> For more info write to <info@kernelci.org>
> >>
> >> --
> >> You received this message because you are subscribed to the Google Gro=
ups "Clang Built Linux" group.
> >> To unsubscribe from this group and stop receiving emails from it, send=
 an email to clang-built-linux+unsubscribe@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/m=
sgid/clang-built-linux/5e7cb175.1c69fb81.d10e.6d4a%40mx.google.com.
> >
> >
> >
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmRN6H6LMSc2o%3DXYVzrzSqDCW3JqLMxzWDiwa%2BXogyggA%4=
0mail.gmail.com.
