Return-Path: <clang-built-linux+bncBCZ77L636IHRBFGR4DZAKGQEOBSXM4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6D917298B
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 21:37:41 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id d28sf300856vkn.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 12:37:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582835860; cv=pass;
        d=google.com; s=arc-20160816;
        b=hcPJiH7IabA43pvXaXGwoKK5pEVdCohQhAIY/UlnuO5o/foQfuS91U7CWn5CBFgYRr
         uCxLOZ7abghpDAWbGj5vaVLCueOM2MtsQMhed6EqIeZc4y6P1dlVLdLu3f9I3YtL0hz4
         dI8J+bfjg55XZbsLqHcjFt5K//YkfAyOcESSOyPMxRGMwlIRXmjfP/rEt8rSBENr+ktB
         xCe0Aj3gk8+KfCnYvCL4vbG8EIhm42d0VeMetgn+737I+g9QnLGQNSApQOzuk6N/VRcG
         ylTDeRf+XzT+C1dvxwfbuqcASOPn1PKTyFD6E+Bvz+JaC/r0ONgMU+whyWa8QunXtv3y
         xEqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8pLsuvwgXKe1tbl8J9MPetEi/vEE6UlUdThY769tr1s=;
        b=Pdnz9QHrfKBR/CPOgTvb6wwPfGvn0k7PbkQ7pduQP1eNfZPEWB/8yU+jfMYetUPzyq
         ZyoI4le2u+NwUW/4le9DDOx/bpNptW1uMIuxMYQ1RqegtJuncuQcXA+w10XO5rtxPrHq
         GFiHtQ9CSbZVXNki9ddVBTs3WjGXxXRvNwGohd+y6SNUJ7tuRoVf7q6rO6DuO5w/pKuE
         Av4qGwggo9Vv1RP0eOJjsHYlBrvFCTWeCa1kcpz+8EGxDooXIjBPCxh/SzWibkUuW+pq
         oy8pt0o5wqBEPl+CFZr5Lpzk5auD2TNqeruKN1r0d5qLA+o2a5DsF0VT4YjnGiKPUpOF
         aQ4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iQrGMgB7;
       spf=pass (google.com: domain of guillaume.tucker@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=guillaume.tucker@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8pLsuvwgXKe1tbl8J9MPetEi/vEE6UlUdThY769tr1s=;
        b=OjRcm+CGgJtZ9LMZnsxLUQ6GJMBGs0bkXL2r9CV4tPqGfniSkLe4alAeJL2XFDOvDW
         93+zzRNeLuC0gvXOhAMTMVIuqVKQJ+4asP3CrbexU6JxpNcMVjpvhV1OflbzyN1LF2s9
         bH8IBi9Fq1PfUqa7vCutgr6dzZuOOrhgawMXfSJFRA2oZIHOY+i+TagxEGjtz4JcmYrl
         ZOaWkephPDRbyaiRKQ7BXYuEt3WT6Dz+xYgFc8axJ5FpnUW3pm9f97192dCENlO5HfFO
         FuM/q4mD2NuFkOmDJ+cCxaHMtbOkWm1CBVIOaNwXqlIq3kKJkbGhG8V/PhfPaK4drkrm
         Ke4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8pLsuvwgXKe1tbl8J9MPetEi/vEE6UlUdThY769tr1s=;
        b=nbJNX9VFSdcn7ef76ZUyFmhTsHSNVrE+FnkZj1l8ZI2oFcHwuU1bCjnz903lCxXIl7
         dpLj1ALh1omVlKcC6DEICofi2TelnkA9L5L5UfbLN95WGqLDPOJiofuLsbXzw4V6dJGl
         WpHNFgneDNwIzOMjS05MrBrUZXlCHTiA5khG+7DOzxDHnkacyBgWxXsdXGYlPdx3zaoD
         WbkH3uSWZYK2gS0n2IU+fXZsjU+4sC6sT4jewM7Er3vo6UwUDo17PcqYhX7GV3w3Lr4Q
         3tgvJJa4SDCS3O4blFoOngKgcfIqg8MqV6oiqShRSpIi7Nme2i0+Or9LR6uWADUuO6Na
         hNNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8pLsuvwgXKe1tbl8J9MPetEi/vEE6UlUdThY769tr1s=;
        b=oBE9lzLbJ4MdbGxQ3RKytjD1miq3kFld7F7urGFzq+ugAeBunB1TRYeltj4KzBI7nL
         KcWSRUiyrFXhNeYsYziCGLKbYUYVHhtwVINnBqHjDwPo+t0W1q+2NINVxN+38moRJ0iv
         vqO2A5WBy7DC1Hd61KHejoUVuGYXKGWeEwBf6zl7ECWIqCxrJo3lKM674PLcBvjmZURB
         gzDA+XbQIiUR3qB9/kuLvqR2iw+HqdhVhLT9dIPtj6Crwm3TnUAV1PwIwZgLWZwskuSt
         3BlHN8RzoGL9szyv57NyoQcWxcvkEjdIQNcVLBDl/qK5aYuocHr/e1it5gKedWPGJVxW
         d1ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1D9icW2yGUyOzf+A8KNqbX/0Ee7yaY0UjmhJ5go8GmXUt6jhxM
	YIfoJ+10qjp/2lhFwopOb0M=
X-Google-Smtp-Source: ADFU+vuj7w8r2QpHO6a5enRY7wE7B8mALPv0R1GL+Wm0WL+KYq3tx/0yh0O1rUoBhW0uZjB166imMw==
X-Received: by 2002:ab0:71da:: with SMTP id n26mr307472uao.102.1582835860412;
        Thu, 27 Feb 2020 12:37:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:f48d:: with SMTP id s135ls48908vkh.0.gmail; Thu, 27 Feb
 2020 12:37:39 -0800 (PST)
X-Received: by 2002:a1f:abc7:: with SMTP id u190mr672023vke.65.1582835859753;
        Thu, 27 Feb 2020 12:37:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582835859; cv=none;
        d=google.com; s=arc-20160816;
        b=VS/V2ZPme89QiVDjRSyKRrn21LuaQ1BFfcA4s9tHn2i2S27G7mnc1+Hc/k6nU5fu9F
         EIl3Et4Y+vILMIyng34ZvSkSXoWE2tAWk1LaudvoPJVZL9dNk/PDmDZWzrgDCjWyc0Sb
         iINueaW6rMEvIC4P25hi00oaeNNe+MdPzaQW5JcacTVMPBDEP3TZrt3MxUNLVVwq5D1b
         q6u25hWtY5A7D/dehDhCkC4xiCPaNEar3h0RxztO8RBqOX/L3vTKYGkoEnnqrJdgxhcN
         nNqXqr8DsVWNeEnWmOIB3S3I06J7OJJ0nEGdMwduPZw7x/+/l6JBM57kppOWFm7p8kho
         171w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kujYDQY0ho7FQUYgdNtn07rR1MC+5k9jBZfYAVZ934E=;
        b=vK0Yg0ZBuVPIlAHe4p89zxYU94Wv+Ju7NIW7IqhNTCyJgHpNDADadnXJ5a5+nYP8qT
         r/sVSHIFJEo4V3ERE+sssmzceKIBawtFFSOv8akUIrL/dROne/3L8dapMQ8xmFy+CIK0
         TEaMGVlES9kyZkxhn2gMyaH0xcKnMVikZcBvIBXDzYZgqpvfx5g7E9A1ijVtccaqbWdT
         J/X68cNryFvlzj9I6ftD1G7labDM8W3NPjHVshk6N0FHEvi5spkyPyvXTeFTtlBfko+Q
         HTNjR0BLzjB+xHOAzQ/QNeL8z6BhjkvuoEGG0q9eF5PAp9BhmWrNGhwwY+8E1qfWnM4G
         3pCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iQrGMgB7;
       spf=pass (google.com: domain of guillaume.tucker@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=guillaume.tucker@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id 203si48376vky.2.2020.02.27.12.37.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 12:37:39 -0800 (PST)
Received-SPF: pass (google.com: domain of guillaume.tucker@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id x2so762005ila.9
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 12:37:39 -0800 (PST)
X-Received: by 2002:a92:8384:: with SMTP id p4mr298366ilk.193.1582835858097;
 Thu, 27 Feb 2020 12:37:38 -0800 (PST)
MIME-Version: 1.0
References: <5e57d0a2.1c69fb81.b44cf.2a50@mx.google.com> <CAKwvOdnVh0xSrrQ=RkRSYOVHYD0-i+=E=Rsg6JjdG9=4r7BN+w@mail.gmail.com>
In-Reply-To: <CAKwvOdnVh0xSrrQ=RkRSYOVHYD0-i+=E=Rsg6JjdG9=4r7BN+w@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@gmail.com>
Date: Thu, 27 Feb 2020 20:37:26 +0000
Message-ID: <CAH1_8nCA5JcZPLFuzm2mof9XES8etXRhLkwUbMsFLfBuU1n7vw@mail.gmail.com>
Subject: Re: next/master build: 219 builds: 84 failed, 135 passed, 101 errors,
 267 warnings (next-20200227)
To: kernelci@groups.io, Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	"kernelci.org bot" <bot@kernelci.org>
Content-Type: multipart/alternative; boundary="0000000000000f4d3e059f94b10b"
X-Original-Sender: guillaume.tucker@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iQrGMgB7;       spf=pass
 (google.com: domain of guillaume.tucker@gmail.com designates
 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=guillaume.tucker@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000000f4d3e059f94b10b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 27, 2020 at 7:21 PM Nick Desaulniers via Groups.Io
<ndesaulniers=3Dgoogle.com@groups.io> wrote:

> + KernelCI
>
> So it looks like this is the latest report we received. Any thoughts
> on why clang-8 is being used in the report after
> https://github.com/kernelci/kernelci-core/pull/325 was merged 2 days
> ago?  Is the deployment not continuous (ie. still has to be pushed to
> production)?
>

That's right, production is not updated continuously.  Some
changes have to go hand-in-hand with the kernelci-backend
instance, some changes need Docker images to be rebuilt...
Typically production gets updated once a week, I'm planning to do
this tomorrow.

Guillaume


> On Thu, Feb 27, 2020 at 6:22 AM kernelci.org bot <bot@kernelci.org> wrote=
:
> >
> > next/master build: 219 builds: 84 failed, 135 passed, 101 errors, 267
> warnings (next-20200227)
> >
> > Full Build Summary:
> https://kernelci.org/build/next/branch/master/kernel/next-20200227/
> >
> > Tree: next
> > Branch: master
> > Git Describe: next-20200227
> > Git Commit: 10569a280f259f696c0b32fc1d45866d2fd33f53
> > Git URL: git://
> git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > Built: 7 unique architectures
> >
> > Build Failures Detected:
> >
> > arc:
> >     allnoconfig: (gcc-8) FAIL
> >     axs103_defconfig: (gcc-8) FAIL
> >     axs103_smp_defconfig: (gcc-8) FAIL
> >     haps_hs_defconfig: (gcc-8) FAIL
> >     haps_hs_smp_defconfig: (gcc-8) FAIL
> >     haps_hs_smp_defconfig+kselftest: (gcc-8) FAIL
> >     hsdk_defconfig: (gcc-8) FAIL
> >     nsimosci_hs_defconfig: (gcc-8) FAIL
> >     nsimosci_hs_smp_defconfig: (gcc-8) FAIL
> >     tinyconfig: (gcc-8) FAIL
> >     vdk_hs38_defconfig: (gcc-8) FAIL
> >     vdk_hs38_smp_defconfig: (gcc-8) FAIL
> >
> > arm:
> >     cm_x300_defconfig: (gcc-8) FAIL
> >     em_x270_defconfig: (gcc-8) FAIL
> >     eseries_pxa_defconfig: (gcc-8) FAIL
> >     pxa_defconfig: (gcc-8) FAIL
> >
> > mips:
> >     32r2el_defconfig: (gcc-8) FAIL
> >     32r2el_defconfig+kselftest: (gcc-8) FAIL
> >     allnoconfig: (gcc-8) FAIL
> >     ar7_defconfig: (gcc-8) FAIL
> >     ath25_defconfig: (gcc-8) FAIL
> >     ath79_defconfig: (gcc-8) FAIL
> >     bcm47xx_defconfig: (gcc-8) FAIL
> >     bcm63xx_defconfig: (gcc-8) FAIL
> >     bigsur_defconfig: (gcc-8) FAIL
> >     bmips_be_defconfig: (gcc-8) FAIL
> >     bmips_stb_defconfig: (gcc-8) FAIL
> >     capcella_defconfig: (gcc-8) FAIL
> >     cavium_octeon_defconfig: (gcc-8) FAIL
> >     ci20_defconfig: (gcc-8) FAIL
> >     cobalt_defconfig: (gcc-8) FAIL
> >     cu1000-neo_defconfig: (gcc-8) FAIL
> >     db1xxx_defconfig: (gcc-8) FAIL
> >     decstation_64_defconfig: (gcc-8) FAIL
> >     decstation_defconfig: (gcc-8) FAIL
> >     decstation_r4k_defconfig: (gcc-8) FAIL
> >     e55_defconfig: (gcc-8) FAIL
> >     fuloong2e_defconfig: (gcc-8) FAIL
> >     gcw0_defconfig: (gcc-8) FAIL
> >     gpr_defconfig: (gcc-8) FAIL
> >     ip22_defconfig: (gcc-8) FAIL
> >     ip27_defconfig: (gcc-8) FAIL
> >     ip28_defconfig: (gcc-8) FAIL
> >     ip32_defconfig: (gcc-8) FAIL
> >     jazz_defconfig: (gcc-8) FAIL
> >     jmr3927_defconfig: (gcc-8) FAIL
> >     lasat_defconfig: (gcc-8) FAIL
> >     lemote2f_defconfig: (gcc-8) FAIL
> >     loongson1b_defconfig: (gcc-8) FAIL
> >     loongson1c_defconfig: (gcc-8) FAIL
> >     loongson3_defconfig: (gcc-8) FAIL
> >     malta_defconfig: (gcc-8) FAIL
> >     malta_kvm_defconfig: (gcc-8) FAIL
> >     malta_kvm_guest_defconfig: (gcc-8) FAIL
> >     malta_qemu_32r6_defconfig: (gcc-8) FAIL
> >     maltaaprp_defconfig: (gcc-8) FAIL
> >     maltasmvp_defconfig: (gcc-8) FAIL
> >     maltasmvp_eva_defconfig: (gcc-8) FAIL
> >     maltaup_defconfig: (gcc-8) FAIL
> >     maltaup_xpa_defconfig: (gcc-8) FAIL
> >     markeins_defconfig: (gcc-8) FAIL
> >     mips_paravirt_defconfig: (gcc-8) FAIL
> >     mpc30x_defconfig: (gcc-8) FAIL
> >     msp71xx_defconfig: (gcc-8) FAIL
> >     mtx1_defconfig: (gcc-8) FAIL
> >     nlm_xlp_defconfig: (gcc-8) FAIL
> >     nlm_xlr_defconfig: (gcc-8) FAIL
> >     omega2p_defconfig: (gcc-8) FAIL
> >     pic32mzda_defconfig: (gcc-8) FAIL
> >     pistachio_defconfig: (gcc-8) FAIL
> >     pnx8335_stb225_defconfig: (gcc-8) FAIL
> >     qi_lb60_defconfig: (gcc-8) FAIL
> >     rb532_defconfig: (gcc-8) FAIL
> >     rbtx49xx_defconfig: (gcc-8) FAIL
> >     rm200_defconfig: (gcc-8) FAIL
> >     rt305x_defconfig: (gcc-8) FAIL
> >     sb1250_swarm_defconfig: (gcc-8) FAIL
> >     tb0219_defconfig: (gcc-8) FAIL
> >     tb0226_defconfig: (gcc-8) FAIL
> >     tb0287_defconfig: (gcc-8) FAIL
> >     tinyconfig: (gcc-8) FAIL
> >     vocore2_defconfig: (gcc-8) FAIL
> >     workpad_defconfig: (gcc-8) FAIL
> >     xway_defconfig: (gcc-8) FAIL
> >
> > Errors and Warnings Detected:
> >
> > arc:
> >     allnoconfig (gcc-8): 1 error, 1 warning
> >     axs103_defconfig (gcc-8): 1 error, 1 warning
> >     axs103_smp_defconfig (gcc-8): 1 error, 1 warning
> >     haps_hs_defconfig (gcc-8): 1 error, 1 warning
> >     haps_hs_smp_defconfig (gcc-8): 1 error, 1 warning
> >     haps_hs_smp_defconfig (gcc-8): 1 error, 1 warning
> >     hsdk_defconfig (gcc-8): 1 error, 1 warning
> >     nsimosci_hs_defconfig (gcc-8): 1 error, 1 warning
> >     nsimosci_hs_smp_defconfig (gcc-8): 1 error, 1 warning
> >     tinyconfig (gcc-8): 1 error, 1 warning
> >     vdk_hs38_defconfig (gcc-8): 1 error, 1 warning
> >     vdk_hs38_smp_defconfig (gcc-8): 1 error, 1 warning
> >
> > arm64:
> >     allmodconfig (clang-8): 81 warnings
> >     defconfig (clang-8): 18 warnings
> >     defconfig (gcc-8): 1 warning
> >     defconfig (gcc-8): 1 warning
> >     defconfig (gcc-8): 1 warning
> >     defconfig (gcc-8): 1 warning
> >
> > arm:
> >     allmodconfig (gcc-8): 21 warnings
> >     aspeed_g4_defconfig (gcc-8): 4 warnings
> >     aspeed_g5_defconfig (gcc-8): 4 warnings
> >     cm_x300_defconfig (gcc-8): 1 error, 2 warnings
> >     em_x270_defconfig (gcc-8): 1 error, 2 warnings
> >     eseries_pxa_defconfig (gcc-8): 14 errors, 12 warnings
> >     multi_v5_defconfig (gcc-8): 4 warnings
> >     multi_v7_defconfig (gcc-8): 4 warnings
> >     multi_v7_defconfig (gcc-8): 4 warnings
> >     multi_v7_defconfig (gcc-8): 4 warnings
> >     multi_v7_defconfig (gcc-8): 4 warnings
> >     multi_v7_defconfig (gcc-8): 5 warnings
> >     pxa_defconfig (gcc-8): 3 errors, 6 warnings
> >
> > i386:
> >
> > mips:
> >     32r2el_defconfig (gcc-8): 1 error, 1 warning
> >     32r2el_defconfig (gcc-8): 1 error, 1 warning
> >     allnoconfig (gcc-8): 1 error, 1 warning
> >     ar7_defconfig (gcc-8): 1 error, 1 warning
> >     ath25_defconfig (gcc-8): 1 error, 1 warning
> >     ath79_defconfig (gcc-8): 1 error, 1 warning
> >     bcm47xx_defconfig (gcc-8): 1 error, 1 warning
> >     bcm63xx_defconfig (gcc-8): 1 error, 1 warning
> >     bigsur_defconfig (gcc-8): 1 error, 1 warning
> >     bmips_be_defconfig (gcc-8): 1 error, 1 warning
> >     bmips_stb_defconfig (gcc-8): 1 error, 1 warning
> >     capcella_defconfig (gcc-8): 1 error, 1 warning
> >     cavium_octeon_defconfig (gcc-8): 1 error, 1 warning
> >     ci20_defconfig (gcc-8): 1 error, 1 warning
> >     cobalt_defconfig (gcc-8): 1 error, 1 warning
> >     cu1000-neo_defconfig (gcc-8): 1 error, 1 warning
> >     db1xxx_defconfig (gcc-8): 1 error, 1 warning
> >     decstation_64_defconfig (gcc-8): 1 error, 1 warning
> >     decstation_defconfig (gcc-8): 1 error, 1 warning
> >     decstation_r4k_defconfig (gcc-8): 1 error, 1 warning
> >     e55_defconfig (gcc-8): 1 error, 1 warning
> >     fuloong2e_defconfig (gcc-8): 1 error, 1 warning
> >     gcw0_defconfig (gcc-8): 1 error, 1 warning
> >     gpr_defconfig (gcc-8): 1 error, 1 warning
> >     ip22_defconfig (gcc-8): 1 error, 1 warning
> >     ip27_defconfig (gcc-8): 3 errors, 2 warnings
> >     ip28_defconfig (gcc-8): 1 error, 1 warning
> >     ip32_defconfig (gcc-8): 1 error, 1 warning
> >     jazz_defconfig (gcc-8): 1 error, 1 warning
> >     jmr3927_defconfig (gcc-8): 1 error, 1 warning
> >     lasat_defconfig (gcc-8): 1 error, 1 warning
> >     lemote2f_defconfig (gcc-8): 1 error, 1 warning
> >     loongson1b_defconfig (gcc-8): 1 error, 1 warning
> >     loongson1c_defconfig (gcc-8): 1 error, 1 warning
> >     loongson3_defconfig (gcc-8): 1 error, 1 warning
> >     malta_defconfig (gcc-8): 1 error, 1 warning
> >     malta_kvm_defconfig (gcc-8): 1 error, 1 warning
> >     malta_kvm_guest_defconfig (gcc-8): 1 error, 1 warning
> >     malta_qemu_32r6_defconfig (gcc-8): 1 error, 1 warning
> >     maltaaprp_defconfig (gcc-8): 1 error, 1 warning
> >     maltasmvp_defconfig (gcc-8): 1 error, 1 warning
> >     maltasmvp_eva_defconfig (gcc-8): 1 error, 1 warning
> >     maltaup_defconfig (gcc-8): 1 error, 1 warning
> >     maltaup_xpa_defconfig (gcc-8): 1 error, 1 warning
> >     markeins_defconfig (gcc-8): 1 error, 1 warning
> >     mips_paravirt_defconfig (gcc-8): 1 error, 1 warning
> >     mpc30x_defconfig (gcc-8): 1 error, 1 warning
> >     msp71xx_defconfig (gcc-8): 1 error, 1 warning
> >     mtx1_defconfig (gcc-8): 1 error, 1 warning
> >     nlm_xlp_defconfig (gcc-8): 1 error, 1 warning
> >     nlm_xlr_defconfig (gcc-8): 1 error, 1 warning
> >     omega2p_defconfig (gcc-8): 1 error, 1 warning
> >     pic32mzda_defconfig (gcc-8): 1 error, 1 warning
> >     pistachio_defconfig (gcc-8): 1 error, 1 warning
> >     pnx8335_stb225_defconfig (gcc-8): 1 error, 1 warning
> >     qi_lb60_defconfig (gcc-8): 1 error, 1 warning
> >     rb532_defconfig (gcc-8): 1 error, 1 warning
> >     rbtx49xx_defconfig (gcc-8): 1 error, 1 warning
> >     rm200_defconfig (gcc-8): 1 error, 1 warning
> >     rt305x_defconfig (gcc-8): 1 error, 1 warning
> >     sb1250_swarm_defconfig (gcc-8): 1 error, 1 warning
> >     tb0219_defconfig (gcc-8): 1 error, 1 warning
> >     tb0226_defconfig (gcc-8): 1 error, 1 warning
> >     tb0287_defconfig (gcc-8): 1 error, 1 warning
> >     tinyconfig (gcc-8): 1 error, 1 warning
> >     vocore2_defconfig (gcc-8): 1 error, 1 warning
> >     workpad_defconfig (gcc-8): 1 error, 1 warning
> >     xway_defconfig (gcc-8): 1 error, 1 warning
> >
> > riscv:
> >     rv32_defconfig (gcc-8): 6 warnings
> >
> > x86_64:
> >     tinyconfig (gcc-8): 1 warning
> >
> > Errors summary:
> >
> >     80   mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >     3    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko]
> undefined!
> >     2    arch/mips/include/asm/sn/addrs.h:58:44: error: left shift coun=
t
> >=3D width of type [-Werror=3Dshift-count-overflow]
> >     1    sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct
> regmap_config=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=
=80=99
> >     1    sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct
> regmap_config=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
> >     1    sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct
> regmap_config=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
> >     1    sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct
> regmap_config=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
> >     1    sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct
> regmap_config=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
> >     1    sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct
> regmap_config=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
> >     1    sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct
> regmap_config=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
> >     1    sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct
> regmap_config=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
> >     1    sound/soc/codecs/wm9712.c:84:35: error: storage size of
> =E2=80=98wm9712_regmap_config=E2=80=99 isn=E2=80=99t known
> >     1    sound/soc/codecs/wm9712.c:84:21: error: variable
> =E2=80=98wm9712_regmap_config=E2=80=99 has initializer but incomplete typ=
e
> >     1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration o=
f
> function =E2=80=98regmap_ac97_default_volatile=E2=80=99
> [-Werror=3Dimplicit-function-declaration]
> >     1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration o=
f
> function =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean
> =E2=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function=
-declaration]
> >     1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration o=
f
> function =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean
> =E2=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function=
-declaration]
> >     1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration
> of function =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98mem=
map_init_zone=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >     1    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.ko]
> undefined!
> >     1    ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.ko]
> undefined!
> >
> > Warnings summary:
> >
> >     81   cc1: some warnings being treated as errors
> >     36   1 warning generated.
> >     14   drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer
> from integer of different size [-Wint-to-pointer-cast]
> >     9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >     9
> arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4: Warning
> (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bus unit
> address format error, expected "40000010"
> >     9    arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >     9
> arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4: Warning
> (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bus unit
> address format error, expected "40000010"
> >     8    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
> >     6    2 warnings generated.
> >     4    kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=
=E2=80=99
> declared =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
> >     4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer
> from integer of different size [-Wint-to-pointer-cast]
> >     2    fs/btrfs/backref.c:394:30: warning: suggest braces around
> initialization of subobject [-Wmissing-braces]
> >     2    drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: sugges=
t
> braces around initialization of subobject [-Wmissing-braces]
> >     2
> drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:80:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     2    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
> >     2    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
> >     2    <stdin>:830:2: warning: #warning syscall fstat64 not
> implemented [-Wcpp]
> >     2    <stdin>:1511:2: warning: #warning syscall clone3 not
> implemented [-Wcpp]
> >     2    <stdin>:1127:2: warning: #warning syscall fstatat64 not
> implemented [-Wcpp]
> >     2    3 warnings generated.
> >     1    sound/soc/codecs/wm9712.c:93:18: warning: excess elements in
> struct initializer
> >     1    sound/soc/codecs/wm9712.c:91:18: warning: excess elements in
> struct initializer
> >     1    sound/soc/codecs/wm9712.c:89:16: warning: excess elements in
> struct initializer
> >     1    sound/soc/codecs/wm9712.c:88:18: warning: excess elements in
> struct initializer
> >     1    sound/soc/codecs/wm9712.c:87:14: warning: excess elements in
> struct initializer
> >     1    sound/soc/codecs/wm9712.c:86:16: warning: excess elements in
> struct initializer
> >     1    sound/soc/codecs/wm9712.c:85:14: warning: excess elements in
> struct initializer
> >     1    sound/soc/codecs/wm9712.c:653:10: warning: assignment to
> =E2=80=98struct regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointe=
r from integer without a cast
> [-Wint-conversion]
> >     1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032
> bytes is larger than 1024 bytes [-Wframe-larger-than=3D]
> >     1    net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq'
> is uninitialized when used within its own initialization [-Wuninitialized=
]
> >     1    net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1    mm/shmem.c:2745:35: warning: variable 'shmem_falloc_waitq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1    include/linux/kernel.h:47:25: warning: excess elements in
> struct initializer
> >     1    fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1    fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialize=
d
> when used within its own initialization [-Wuninitialized]
> >     1    fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized
> when used within its own initialization [-Wuninitialized]
> >     1    fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized
> when used within its own initialization [-Wuninitialized]
> >     1    fs/namei.c:3213:34: warning: variable 'wq' is uninitialized
> when used within its own initialization [-Wuninitialized]
> >     1    fs/namei.c:1736:34: warning: variable 'wq' is uninitialized
> when used within its own initialization [-Wuninitialized]
> >     1    fs/fuse/readdir.c:161:34: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1    fs/cifs/readdir.c:84:34: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1    fs/afs/dir_silly.c:205:34: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from
> pointer to integer of different size [-Wpointer-to-int-cast]
> >     1    drivers/scsi/lpfc/lpfc_sli.c:11910:34: warning: variable
> 'done_q' is uninitialized when used within its own initialization
> [-Wuninitialized]
> >     1    drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable
> 'waitq' is uninitialized when used within its own initialization
> [-Wuninitialized]
> >     1    drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1    drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning:
> variable 'rate_idx' is used uninitialized whenever 'if' condition is fals=
e
> [-Wsometimes-uninitialized]
> >     1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning:
> variable 'rate_idx' is used uninitialized whenever 'if' condition is fals=
e
> [-Wsometimes-uninitialized]
> >     1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning:
> variable 'rate_idx' is used uninitialized whenever 'if' condition is fals=
e
> [-Wsometimes-uninitialized]
> >     1    drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note:
> initialize the variable 'rate_idx' to silence this warning
> >     1    drivers/net/usb/lan78xx.c:2659:34: warning: variable
> 'unlink_wakeup' is uninitialized when used within its own initialization
> [-Wuninitialized]
> >     1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer
> to integer of different size [-Wpointer-to-int-cast]
> >     1    drivers/net/ethernet/amazon/ena/ena_netdev.c:310:38: warning:
> suggest braces around initialization of subobject [-Wmissing-braces]
> >     1    drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable
> 'wake' is uninitialized when used within its own initialization
> [-Wuninitialized]
> >     1    drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable
> 'wake' is uninitialized when used within its own initialization
> [-Wuninitialized]
> >     1    drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11:
> warning: address of array 'grp->sig_types' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
> >     1    drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:56=
:
> warning: address of 'pipe_ctx->stream_res' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
> >     1    drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:31=
:
> warning: address of 'pipe_ctx->plane_res' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
> >     1
> drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2690:53:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     1
> drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:342:53:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     1
> drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:116:62:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     1
> drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:41:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     1
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8558:43:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     1    drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq'
> is uninitialized when used within its own initialization [-Wuninitialized=
]
> >     1    drivers/android/binderfs.c:657:41: warning: suggest braces
> around initialization of subobject [-Wmissing-braces]
> >     1    cc1: all warnings being treated as errors
> >     1    /tmp/ccgeLqJj.s:18191: Warning: using r15 results in
> unpredictable behaviour
> >     1    /tmp/ccgeLqJj.s:18119: Warning: using r15 results in
> unpredictable behaviour
> >     1    .config:1167:warning: override: UNWINDER_GUESS changes choice
> state
> >
> >
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> >
> > Detailed per-defconfig build reports:
> >
> >
> -------------------------------------------------------------------------=
-------
> > 32r2el_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > 32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 war=
ning, 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 21 warnings, 0 sect=
ion
> mismatches
> >
> > Warnings:
> >     /tmp/ccgeLqJj.s:18119: Warning: using r15 results in unpredictable
> behaviour
> >     /tmp/ccgeLqJj.s:18191: Warning: using r15 results in unpredictable
> behaviour
> >     drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to
> integer of different size [-Wpointer-to-int-cast]
> >     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from
> integer of different size [-Wint-to-pointer-cast]
> >     drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from
> pointer to integer of different size [-Wpointer-to-int-cast]
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >
> >
> -------------------------------------------------------------------------=
-------
> > allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 81 warnings, 0 =
section
> mismatches
> >
> > Warnings:
> >     fs/proc/base.c:1985:35: warning: variable 'wq' is uninitialized whe=
n
> used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     mm/shmem.c:2745:35: warning: variable 'shmem_falloc_waitq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     fs/proc/proc_sysctl.c:705:35: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     fs/namei.c:1736:34: warning: variable 'wq' is uninitialized when
> used within its own initialization [-Wuninitialized]
> >     fs/namei.c:3213:34: warning: variable 'wq' is uninitialized when
> used within its own initialization [-Wuninitialized]
> >     2 warnings generated.
> >     drivers/android/binderfs.c:657:41: warning: suggest braces around
> initialization of subobject [-Wmissing-braces]
> >     1 warning generated.
> >     drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning:
> address of array 'grp->sig_types' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
> >     1 warning generated.
> >     fs/afs/dir_silly.c:205:34: warning: variable 'wq' is uninitialized
> when used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     drivers/bluetooth/bluecard_cs.c:282:36: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     fs/cifs/readdir.c:84:34: warning: variable 'wq' is uninitialized
> when used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     drivers/gpu/host1x/syncpt.c:208:34: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     net/nfc/hci/command.c:59:34: warning: variable 'ew_wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     fs/btrfs/backref.c:394:30: warning: suggest braces around
> initialization of subobject [-Wmissing-braces]
> >     1 warning generated.
> >     net/nfc/hci/llc_shdlc.c:687:34: warning: variable 'connect_wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     fs/fuse/readdir.c:161:34: warning: variable 'wq' is uninitialized
> when used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     fs/nfs/dir.c:464:34: warning: variable 'wq' is uninitialized when
> used within its own initialization [-Wuninitialized]
> >     fs/nfs/dir.c:1638:34: warning: variable 'wq' is uninitialized when
> used within its own initialization [-Wuninitialized]
> >     2 warnings generated.
> >     drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest
> braces around initialization of subobject [-Wmissing-braces]
> >     1 warning generated.
> >     drivers/misc/mic/vop/vop_vringh.c:155:34: warning: variable 'wake'
> is uninitialized when used within its own initialization [-Wuninitialized=
]
> >     drivers/misc/mic/vop/vop_vringh.c:399:34: warning: variable 'wake'
> is uninitialized when used within its own initialization [-Wuninitialized=
]
> >     2 warnings generated.
> >     drivers/net/ethernet/amazon/ena/ena_netdev.c:310:38: warning:
> suggest braces around initialization of subobject [-Wmissing-braces]
> >     1 warning generated.
> >     drivers/net/usb/lan78xx.c:2659:34: warning: variable 'unlink_wakeup=
'
> is uninitialized when used within its own initialization [-Wuninitialized=
]
> >     1 warning generated.
> >     drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning:
> variable 'rate_idx' is used uninitialized whenever 'if' condition is fals=
e
> [-Wsometimes-uninitialized]
> >     drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:13: warning:
> variable 'rate_idx' is used uninitialized whenever 'if' condition is fals=
e
> [-Wsometimes-uninitialized]
> >     drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7: warning:
> variable 'rate_idx' is used uninitialized whenever 'if' condition is fals=
e
> [-Wsometimes-uninitialized]
> >     drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:13: note:
> initialize the variable 'rate_idx' to silence this warning
> >     3 warnings generated.
> >     drivers/scsi/bfa/bfad_im.c:301:34: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     drivers/scsi/bfa/bfad_im.c:378:34: warning: variable 'wq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     2 warnings generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/scsi/lpfc/lpfc_sli.c:11910:34: warning: variable 'done_q' i=
s
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: variable 'waitq' is
> uninitialized when used within its own initialization [-Wuninitialized]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8558:43=
:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >
>  drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:116:62:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >
>  drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table2.c:342:53:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     2 warnings generated.
> >     drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c:297:41=
:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     1 warning generated.
> >     drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:31:
> warning: address of 'pipe_ctx->plane_res' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
> >     drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:56:
> warning: address of 'pipe_ctx->stream_res' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
> >     2 warnings generated.
> >     drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2690:53:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:80:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dp.c:2692:80:
> warning: suggest braces around initialization of subobject
> [-Wmissing-braces]
> >     3 warnings generated.
> >
> >
> -------------------------------------------------------------------------=
-------
> > allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > allnoconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > allnoconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > ar7_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, =
0 section
> mismatches
> >
> > Warnings:
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >
> >
> -------------------------------------------------------------------------=
-------
> > aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, =
0 section
> mismatches
> >
> > Warnings:
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >
> >
> -------------------------------------------------------------------------=
-------
> > assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > ath25_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > ath79_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > axs103_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > axs103_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > bcm47xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > bcm63xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > bigsur_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > bmips_be_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > bmips_stb_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > capcella_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warnin=
g, 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > ci20_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > cm_x300_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 s=
ection
> mismatches
> >
> > Errors:
> >     ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko]
> undefined!
> >
> > Warnings:
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
> >
> >
> -------------------------------------------------------------------------=
-------
> > cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > cobalt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > db1xxx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warnin=
g, 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > decstation_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warni=
ng, 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 sec=
tion
> mismatches
> >
> > Warnings:
> >     fs/btrfs/backref.c:394:30: warning: suggest braces around
> initialization of subobject [-Wmissing-braces]
> >     1 warning generated.
> >     drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warning: suggest
> braces around initialization of subobject [-Wmissing-braces]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >     drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9:
> warning: '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by
> #define of a different macro [-Wheader-guard]
> >     1 warning generated.
> >
> >
> -------------------------------------------------------------------------=
-------
> > defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 section
> mismatches
> >
> > Warnings:
> >     kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=
=80=99 declared
> =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
> >
> >
> -------------------------------------------------------------------------=
-------
> > defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 er=
rors, 1
> warning, 0 section mismatches
> >
> > Warnings:
> >     kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=
=80=99 declared
> =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
> >
> >
> -------------------------------------------------------------------------=
-------
> > defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 er=
rors, 1
> warning, 0 section mismatches
> >
> > Warnings:
> >     kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=
=80=99 declared
> =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
> >
> >
> -------------------------------------------------------------------------=
-------
> > defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning,=
 0
> section mismatches
> >
> > Warnings:
> >     kernel/sched/fair.c:1524:20: warning: =E2=80=98test_idle_cores=E2=
=80=99 declared
> =E2=80=98static=E2=80=99 but never defined [-Wunused-function]
> >
> >
> -------------------------------------------------------------------------=
-------
> > dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > e55_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > em_x270_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 s=
ection
> mismatches
> >
> > Errors:
> >     ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko]
> undefined!
> >
> > Warnings:
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
> >
> >
> -------------------------------------------------------------------------=
-------
> > ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 14 errors, 12 warnin=
gs, 0
> section mismatches
> >
> > Errors:
> >     sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of
> function =E2=80=98regmap_ac97_default_volatile=E2=80=99
> [-Werror=3Dimplicit-function-declaration]
> >     sound/soc/codecs/wm9712.c:84:21: error: variable
> =E2=80=98wm9712_regmap_config=E2=80=99 has initializer but incomplete typ=
e
> >     sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct regmap=
_config=E2=80=99
> has no member named =E2=80=98reg_bits=E2=80=99
> >     sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct regmap=
_config=E2=80=99
> has no member named =E2=80=98reg_stride=E2=80=99
> >     sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct regmap=
_config=E2=80=99
> has no member named =E2=80=98val_bits=E2=80=99
> >     sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct regmap=
_config=E2=80=99
> has no member named =E2=80=98max_register=E2=80=99
> >     sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct regmap=
_config=E2=80=99
> has no member named =E2=80=98cache_type=E2=80=99
> >     sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct regmap=
_config=E2=80=99
> has no member named =E2=80=98volatile_reg=E2=80=99
> >     sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct regmap=
_config=E2=80=99
> has no member named =E2=80=98reg_defaults=E2=80=99
> >     sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct regmap=
_config=E2=80=99
> has no member named =E2=80=98num_reg_defaults=E2=80=99
> >     sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of
> function =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap=
_init_zone=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >     sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of
> function =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean
> =E2=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function=
-declaration]
> >     sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of
> function =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean
> =E2=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function=
-declaration]
> >     sound/soc/codecs/wm9712.c:84:35: error: storage size of
> =E2=80=98wm9712_regmap_config=E2=80=99 isn=E2=80=99t known
> >
> > Warnings:
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
> >     sound/soc/codecs/wm9712.c:85:14: warning: excess elements in struct
> initializer
> >     sound/soc/codecs/wm9712.c:86:16: warning: excess elements in struct
> initializer
> >     sound/soc/codecs/wm9712.c:87:14: warning: excess elements in struct
> initializer
> >     sound/soc/codecs/wm9712.c:88:18: warning: excess elements in struct
> initializer
> >     sound/soc/codecs/wm9712.c:89:16: warning: excess elements in struct
> initializer
> >     sound/soc/codecs/wm9712.c:91:18: warning: excess elements in struct
> initializer
> >     sound/soc/codecs/wm9712.c:93:18: warning: excess elements in struct
> initializer
> >     include/linux/kernel.h:47:25: warning: excess elements in struct
> initializer
> >     sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=80=98s=
truct
> regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer from integer w=
ithout a cast
> [-Wint-conversion]
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > fuloong2e_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > gcw0_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > gpr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > haps_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1=
 warning,
> 0 section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > hsdk_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 secti=
on
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > ip22_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > ip27_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 2 warnings, 0 se=
ction
> mismatches
> >
> > Errors:
> >     arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=
=3D
> width of type [-Werror=3Dshift-count-overflow]
> >     arch/mips/include/asm/sn/addrs.h:58:44: error: left shift count >=
=3D
> width of type [-Werror=3Dshift-count-overflow]
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: all warnings being treated as errors
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > ip28_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > ip32_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > jazz_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > jmr3927_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > lasat_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > loongson1b_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > loongson1c_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > loongson3_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > malta_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warn=
ing, 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warn=
ing, 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > maltaaprp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > maltasmvp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warnin=
g, 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > maltaup_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > markeins_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warnin=
g, 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > mpc30x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > msp71xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section
> mismatches
> >
> > Warnings:
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >
> >
> -------------------------------------------------------------------------=
-------
> > multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, 0=
 section
> mismatches
> >
> > Warnings:
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >
> >
> -------------------------------------------------------------------------=
-------
> > multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PAS=
S, 0
> errors, 4 warnings, 0 section mismatches
> >
> > Warnings:
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >
> >
> -------------------------------------------------------------------------=
-------
> > multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=
=80=94 PASS, 0
> errors, 4 warnings, 0 section mismatches
> >
> > Warnings:
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >
> >
> -------------------------------------------------------------------------=
-------
> > multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 errors=
, 4
> warnings, 0 section mismatches
> >
> > Warnings:
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >
> >
> -------------------------------------------------------------------------=
-------
> > multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 w=
arnings,
> 0 section mismatches
> >
> > Warnings:
> >     net/sched/cls_flower.c:331:1: warning: the frame size of 1032 bytes
> is larger than 1024 bytes [-Wframe-larger-than=3D]
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C
> bus unit address format error, expected "40000010"
> >     arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30:
> Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg:
> I2C address must be less than 10-bits, got "0x40000010"
> >
> >
> -------------------------------------------------------------------------=
-------
> > mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warni=
ng, 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > omega2p_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > pic32mzda_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > pistachio_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warni=
ng, 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 3 errors, 6 warnings, 0 sect=
ion
> mismatches
> >
> > Errors:
> >     ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9713.ko]
> undefined!
> >     ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9712.ko]
> undefined!
> >     ERROR: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm9705.ko]
> undefined!
> >
> > Warnings:
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9705
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9713
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9705
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9712
> >     WARNING: unmet direct dependencies detected for SND_SOC_WM9713
> >
> >
> -------------------------------------------------------------------------=
-------
> > qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > qi_lb60_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > rb532_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > rm200_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > rt305x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 s=
ection
> mismatches
> >
> > Warnings:
> >     <stdin>:830:2: warning: #warning syscall fstat64 not implemented
> [-Wcpp]
> >     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented
> [-Wcpp]
> >     <stdin>:1511:2: warning: #warning syscall clone3 not implemented
> [-Wcpp]
> >     <stdin>:830:2: warning: #warning syscall fstat64 not implemented
> [-Wcpp]
> >     <stdin>:1127:2: warning: #warning syscall fstatat64 not implemented
> [-Wcpp]
> >     <stdin>:1511:2: warning: #warning syscall clone3 not implemented
> [-Wcpp]
> >
> >
> -------------------------------------------------------------------------=
-------
> > s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning=
, 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > tb0219_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > tb0226_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > tb0287_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > tinyconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > tinyconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section m=
ismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 secti=
on
> mismatches
> >
> > Warnings:
> >     .config:1167:warning: override: UNWINDER_GUESS changes choice state
> >
> >
> -------------------------------------------------------------------------=
-------
> > tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0
> section mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > vocore2_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0
> section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > workpad_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 =
warnings,
> 0 section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 =
warnings,
> 0 section mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > xway_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion
> mismatches
> >
> > Errors:
> >     mm/memory.c:1523:41: error: implicit declaration of function
> =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=80=99?
> [-Werror=3Dimplicit-function-declaration]
> >
> > Warnings:
> >     cc1: some warnings being treated as errors
> >
> >
> -------------------------------------------------------------------------=
-------
> > zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion
> mismatches
> >
> >
> -------------------------------------------------------------------------=
-------
> > zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on
> mismatches
> >
> > ---
> > For more info write to <info@kernelci.org>
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/5e57d0a2.1c69fb81.b44=
cf.2a50%40mx.google.com
> .
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Groups.io Links: You receive all messages sent to this group.
>
> View/Reply Online (#665): https://groups.io/g/kernelci/message/665
> Mute This Topic: https://groups.io/mt/71593531/924702
> Group Owner: kernelci+owner@groups.io
> Unsubscribe: https://groups.io/g/kernelci/unsub  [
> guillaume.tucker@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAH1_8nCA5JcZPLFuzm2mof9XES8etXRhLkwUbMsFLfBuU1n7vw%40mai=
l.gmail.com.

--0000000000000f4d3e059f94b10b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Feb 27, 2020 at 7:21 PM Nick Desa=
ulniers via Groups.Io &lt;ndesaulniers=3D<a href=3D"mailto:google.com@group=
s.io">google.com@groups.io</a>&gt; wrote:<br></div><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">+ KernelCI<br>
<br>
So it looks like this is the latest report we received. Any thoughts<br>
on why clang-8 is being used in the report after<br>
<a href=3D"https://github.com/kernelci/kernelci-core/pull/325" rel=3D"noref=
errer" target=3D"_blank">https://github.com/kernelci/kernelci-core/pull/325=
</a> was merged 2 days<br>
ago?=C2=A0 Is the deployment not continuous (ie. still has to be pushed to<=
br>
production)?<br></blockquote><div><br></div>That&#39;s right, production is=
 not updated continuously.=C2=A0 Some<br>changes have to go hand-in-hand wi=
th the kernelci-backend<br>instance, some changes need Docker images to be =
rebuilt...<br>Typically production gets updated once a week, I&#39;m planni=
ng to do<br><div>this tomorrow.</div><div><br></div><div>Guillaume=C2=A0</d=
iv><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
On Thu, Feb 27, 2020 at 6:22 AM <a href=3D"http://kernelci.org" rel=3D"nore=
ferrer" target=3D"_blank">kernelci.org</a> bot &lt;<a href=3D"mailto:bot@ke=
rnelci.org" target=3D"_blank">bot@kernelci.org</a>&gt; wrote:<br>
&gt;<br>
&gt; next/master build: 219 builds: 84 failed, 135 passed, 101 errors, 267 =
warnings (next-20200227)<br>
&gt;<br>
&gt; Full Build Summary: <a href=3D"https://kernelci.org/build/next/branch/=
master/kernel/next-20200227/" rel=3D"noreferrer" target=3D"_blank">https://=
kernelci.org/build/next/branch/master/kernel/next-20200227/</a><br>
&gt;<br>
&gt; Tree: next<br>
&gt; Branch: master<br>
&gt; Git Describe: next-20200227<br>
&gt; Git Commit: 10569a280f259f696c0b32fc1d45866d2fd33f53<br>
&gt; Git URL: git://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/g=
it/next/linux-next.git" rel=3D"noreferrer" target=3D"_blank">git.kernel.org=
/pub/scm/linux/kernel/git/next/linux-next.git</a><br>
&gt; Built: 7 unique architectures<br>
&gt;<br>
&gt; Build Failures Detected:<br>
&gt;<br>
&gt; arc:<br>
&gt;=C2=A0 =C2=A0 =C2=A0allnoconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0axs103_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0axs103_smp_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0haps_hs_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0haps_hs_smp_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0haps_hs_smp_defconfig+kselftest: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0hsdk_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0nsimosci_hs_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0nsimosci_hs_smp_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0tinyconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0vdk_hs38_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0vdk_hs38_smp_defconfig: (gcc-8) FAIL<br>
&gt;<br>
&gt; arm:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cm_x300_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0em_x270_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0eseries_pxa_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0pxa_defconfig: (gcc-8) FAIL<br>
&gt;<br>
&gt; mips:<br>
&gt;=C2=A0 =C2=A0 =C2=A032r2el_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A032r2el_defconfig+kselftest: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0allnoconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0ar7_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0ath25_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0ath79_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0bcm47xx_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0bcm63xx_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0bigsur_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0bmips_be_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0bmips_stb_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0capcella_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0cavium_octeon_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0ci20_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0cobalt_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0cu1000-neo_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0db1xxx_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0decstation_64_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0decstation_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0decstation_r4k_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0e55_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0fuloong2e_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0gcw0_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0gpr_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0ip22_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0ip27_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0ip28_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0ip32_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0jazz_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0jmr3927_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0lasat_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0lemote2f_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0loongson1b_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0loongson1c_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0loongson3_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0malta_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0malta_kvm_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0malta_kvm_guest_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0malta_qemu_32r6_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0maltaaprp_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0maltasmvp_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0maltasmvp_eva_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0maltaup_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0maltaup_xpa_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0markeins_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0mips_paravirt_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0mpc30x_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0msp71xx_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0mtx1_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0nlm_xlp_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0nlm_xlr_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0omega2p_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0pic32mzda_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0pistachio_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0pnx8335_stb225_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0qi_lb60_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0rb532_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0rbtx49xx_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0rm200_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0rt305x_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0sb1250_swarm_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0tb0219_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0tb0226_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0tb0287_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0tinyconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0vocore2_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0workpad_defconfig: (gcc-8) FAIL<br>
&gt;=C2=A0 =C2=A0 =C2=A0xway_defconfig: (gcc-8) FAIL<br>
&gt;<br>
&gt; Errors and Warnings Detected:<br>
&gt;<br>
&gt; arc:<br>
&gt;=C2=A0 =C2=A0 =C2=A0allnoconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0axs103_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0axs103_smp_defconfig (gcc-8): 1 error, 1 warning<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0haps_hs_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0haps_hs_smp_defconfig (gcc-8): 1 error, 1 warning<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0haps_hs_smp_defconfig (gcc-8): 1 error, 1 warning<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0hsdk_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0nsimosci_hs_defconfig (gcc-8): 1 error, 1 warning<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0nsimosci_hs_smp_defconfig (gcc-8): 1 error, 1 warni=
ng<br>
&gt;=C2=A0 =C2=A0 =C2=A0tinyconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0vdk_hs38_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0vdk_hs38_smp_defconfig (gcc-8): 1 error, 1 warning<=
br>
&gt;<br>
&gt; arm64:<br>
&gt;=C2=A0 =C2=A0 =C2=A0allmodconfig (clang-8): 81 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0defconfig (clang-8): 18 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0defconfig (gcc-8): 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0defconfig (gcc-8): 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0defconfig (gcc-8): 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0defconfig (gcc-8): 1 warning<br>
&gt;<br>
&gt; arm:<br>
&gt;=C2=A0 =C2=A0 =C2=A0allmodconfig (gcc-8): 21 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0aspeed_g4_defconfig (gcc-8): 4 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0aspeed_g5_defconfig (gcc-8): 4 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0cm_x300_defconfig (gcc-8): 1 error, 2 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0em_x270_defconfig (gcc-8): 1 error, 2 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0eseries_pxa_defconfig (gcc-8): 14 errors, 12 warnin=
gs<br>
&gt;=C2=A0 =C2=A0 =C2=A0multi_v5_defconfig (gcc-8): 4 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0multi_v7_defconfig (gcc-8): 4 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0multi_v7_defconfig (gcc-8): 4 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0multi_v7_defconfig (gcc-8): 4 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0multi_v7_defconfig (gcc-8): 4 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0multi_v7_defconfig (gcc-8): 5 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0pxa_defconfig (gcc-8): 3 errors, 6 warnings<br>
&gt;<br>
&gt; i386:<br>
&gt;<br>
&gt; mips:<br>
&gt;=C2=A0 =C2=A0 =C2=A032r2el_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A032r2el_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0allnoconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0ar7_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0ath25_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0ath79_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0bcm47xx_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0bcm63xx_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0bigsur_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0bmips_be_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0bmips_stb_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0capcella_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0cavium_octeon_defconfig (gcc-8): 1 error, 1 warning=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0ci20_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0cobalt_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0cu1000-neo_defconfig (gcc-8): 1 error, 1 warning<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0db1xxx_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0decstation_64_defconfig (gcc-8): 1 error, 1 warning=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0decstation_defconfig (gcc-8): 1 error, 1 warning<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0decstation_r4k_defconfig (gcc-8): 1 error, 1 warnin=
g<br>
&gt;=C2=A0 =C2=A0 =C2=A0e55_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0fuloong2e_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0gcw0_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0gpr_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0ip22_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0ip27_defconfig (gcc-8): 3 errors, 2 warnings<br>
&gt;=C2=A0 =C2=A0 =C2=A0ip28_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0ip32_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0jazz_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0jmr3927_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0lasat_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0lemote2f_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0loongson1b_defconfig (gcc-8): 1 error, 1 warning<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0loongson1c_defconfig (gcc-8): 1 error, 1 warning<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0loongson3_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0malta_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0malta_kvm_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0malta_kvm_guest_defconfig (gcc-8): 1 error, 1 warni=
ng<br>
&gt;=C2=A0 =C2=A0 =C2=A0malta_qemu_32r6_defconfig (gcc-8): 1 error, 1 warni=
ng<br>
&gt;=C2=A0 =C2=A0 =C2=A0maltaaprp_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0maltasmvp_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0maltasmvp_eva_defconfig (gcc-8): 1 error, 1 warning=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0maltaup_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0maltaup_xpa_defconfig (gcc-8): 1 error, 1 warning<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0markeins_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0mips_paravirt_defconfig (gcc-8): 1 error, 1 warning=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0mpc30x_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0msp71xx_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0mtx1_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0nlm_xlp_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0nlm_xlr_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0omega2p_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0pic32mzda_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0pistachio_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0pnx8335_stb225_defconfig (gcc-8): 1 error, 1 warnin=
g<br>
&gt;=C2=A0 =C2=A0 =C2=A0qi_lb60_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0rb532_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0rbtx49xx_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0rm200_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0rt305x_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0sb1250_swarm_defconfig (gcc-8): 1 error, 1 warning<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0tb0219_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0tb0226_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0tb0287_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0tinyconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0vocore2_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0workpad_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;=C2=A0 =C2=A0 =C2=A0xway_defconfig (gcc-8): 1 error, 1 warning<br>
&gt;<br>
&gt; riscv:<br>
&gt;=C2=A0 =C2=A0 =C2=A0rv32_defconfig (gcc-8): 6 warnings<br>
&gt;<br>
&gt; x86_64:<br>
&gt;=C2=A0 =C2=A0 =C2=A0tinyconfig (gcc-8): 1 warning<br>
&gt;<br>
&gt; Errors summary:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A080=C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit=
 declaration of function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=
=98page_index=E2=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;=C2=A0 =C2=A0 =C2=A03=C2=A0 =C2=A0 ERROR: &quot;snd_ac97_reset&quot; [s=
ound/soc/codecs/snd-soc-wm9712.ko] undefined!<br>
&gt;=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 arch/mips/include/asm/sn/addrs.h:58:=
44: error: left shift count &gt;=3D width of type [-Werror=3Dshift-count-ov=
erflow]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:94:3: erro=
r: =E2=80=98const struct regmap_config=E2=80=99 has no member named =E2=80=
=98num_reg_defaults=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:93:3: erro=
r: =E2=80=98const struct regmap_config=E2=80=99 has no member named =E2=80=
=98reg_defaults=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:91:3: erro=
r: =E2=80=98const struct regmap_config=E2=80=99 has no member named =E2=80=
=98volatile_reg=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:89:3: erro=
r: =E2=80=98const struct regmap_config=E2=80=99 has no member named =E2=80=
=98cache_type=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:88:3: erro=
r: =E2=80=98const struct regmap_config=E2=80=99 has no member named =E2=80=
=98max_register=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:87:3: erro=
r: =E2=80=98const struct regmap_config=E2=80=99 has no member named =E2=80=
=98val_bits=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:86:3: erro=
r: =E2=80=98const struct regmap_config=E2=80=99 has no member named =E2=80=
=98reg_stride=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:85:3: erro=
r: =E2=80=98const struct regmap_config=E2=80=99 has no member named =E2=80=
=98reg_bits=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:84:35: err=
or: storage size of =E2=80=98wm9712_regmap_config=E2=80=99 isn=E2=80=99t kn=
own<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:84:21: err=
or: variable =E2=80=98wm9712_regmap_config=E2=80=99 has initializer but inc=
omplete type<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:80:10: err=
or: implicit declaration of function =E2=80=98regmap_ac97_default_volatile=
=E2=80=99 [-Werror=3Dimplicit-function-declaration]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:675:3: err=
or: implicit declaration of function =E2=80=98snd_soc_component_exit_regmap=
=E2=80=99; did you mean =E2=80=98snd_soc_component_trigger=E2=80=99? [-Werr=
or=3Dimplicit-function-declaration]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:662:2: err=
or: implicit declaration of function =E2=80=98snd_soc_component_init_regmap=
=E2=80=99; did you mean =E2=80=98snd_soc_component_trigger=E2=80=99? [-Werr=
or=3Dimplicit-function-declaration]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:653:12: er=
ror: implicit declaration of function =E2=80=98regmap_init_ac97=E2=80=99; d=
id you mean =E2=80=98memmap_init_zone=E2=80=99? [-Werror=3Dimplicit-functio=
n-declaration]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 ERROR: &quot;snd_ac97_reset&quot; [s=
ound/soc/codecs/snd-soc-wm9713.ko] undefined!<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 ERROR: &quot;snd_ac97_reset&quot; [s=
ound/soc/codecs/snd-soc-wm9705.ko] undefined!<br>
&gt;<br>
&gt; Warnings summary:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A081=C2=A0 =C2=A0cc1: some warnings being treated as =
errors<br>
&gt;=C2=A0 =C2=A0 =C2=A036=C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A014=C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/c=
ore/diag/rsc_dump.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a =
header guard here, followed by #define of a different macro [-Wheader-guard=
]<br>
&gt;=C2=A0 =C2=A0 =C2=A09=C2=A0 =C2=A0 drivers/net/phy/mdio-cavium.h:113:48=
: warning: cast to pointer from integer of different size [-Wint-to-pointer=
-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A09=C2=A0 =C2=A0 arch/arm/boot/dts/aspeed-bmc-faceboo=
k-tiogapass.dts:523.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-=
bus@380/ipmb0@10:reg: I2C address must be less than 10-bits, got &quot;0x40=
000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A09=C2=A0 =C2=A0 arch/arm/boot/dts/aspeed-bmc-faceboo=
k-tiogapass.dts:521.11-525.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/=
i2c-bus@380/ipmb0@10: I2C bus unit address format error, expected &quot;400=
00010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A09=C2=A0 =C2=A0 arch/arm/boot/dts/aspeed-bmc-faceboo=
k-tiogapass.dts:437.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-=
bus@140/ipmb0@10:reg: I2C address must be less than 10-bits, got &quot;0x40=
000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A09=C2=A0 =C2=A0 arch/arm/boot/dts/aspeed-bmc-faceboo=
k-tiogapass.dts:435.11-439.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/=
i2c-bus@140/ipmb0@10: I2C bus unit address format error, expected &quot;400=
00010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A08=C2=A0 =C2=A0 WARNING: unmet direct dependencies d=
etected for SND_SOC_WM9712<br>
&gt;=C2=A0 =C2=A0 =C2=A06=C2=A0 =C2=A0 2 warnings generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A04=C2=A0 =C2=A0 kernel/sched/fair.c:1524:20: warning=
: =E2=80=98test_idle_cores=E2=80=99 declared =E2=80=98static=E2=80=99 but n=
ever defined [-Wunused-function]<br>
&gt;=C2=A0 =C2=A0 =C2=A04=C2=A0 =C2=A0 drivers/net/phy/mdio-cavium.h:114:37=
: warning: cast to pointer from integer of different size [-Wint-to-pointer=
-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 fs/btrfs/backref.c:394:30: warning: =
suggest braces around initialization of subobject [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 drivers/gpu/drm/sun4i/sun6i_mipi_dsi=
.c:722:36: warning: suggest braces around initialization of subobject [-Wmi=
ssing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 drivers/gpu/drm/amd/amdgpu/../displa=
y/dc/core/dc_link_dp.c:2692:80: warning: suggest braces around initializati=
on of subobject [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 WARNING: unmet direct dependencies d=
etected for SND_SOC_WM9713<br>
&gt;=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 WARNING: unmet direct dependencies d=
etected for SND_SOC_WM9705<br>
&gt;=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 &lt;stdin&gt;:830:2: warning: #warni=
ng syscall fstat64 not implemented [-Wcpp]<br>
&gt;=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 &lt;stdin&gt;:1511:2: warning: #warn=
ing syscall clone3 not implemented [-Wcpp]<br>
&gt;=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 &lt;stdin&gt;:1127:2: warning: #warn=
ing syscall fstatat64 not implemented [-Wcpp]<br>
&gt;=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 3 warnings generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:93:18: war=
ning: excess elements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:91:18: war=
ning: excess elements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:89:16: war=
ning: excess elements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:88:18: war=
ning: excess elements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:87:14: war=
ning: excess elements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:86:16: war=
ning: excess elements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:85:14: war=
ning: excess elements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 sound/soc/codecs/wm9712.c:653:10: wa=
rning: assignment to =E2=80=98struct regmap *=E2=80=99 from =E2=80=98int=E2=
=80=99 makes pointer from integer without a cast [-Wint-conversion]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 net/sched/cls_flower.c:331:1: warnin=
g: the frame size of 1032 bytes is larger than 1024 bytes [-Wframe-larger-t=
han=3D]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 net/nfc/hci/llc_shdlc.c:687:34: warn=
ing: variable &#39;connect_wq&#39; is uninitialized when used within its ow=
n initialization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 net/nfc/hci/command.c:59:34: warning=
: variable &#39;ew_wq&#39; is uninitialized when used within its own initia=
lization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 mm/shmem.c:2745:35: warning: variabl=
e &#39;shmem_falloc_waitq&#39; is uninitialized when used within its own in=
itialization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 include/linux/kernel.h:47:25: warnin=
g: excess elements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 fs/proc/proc_sysctl.c:705:35: warnin=
g: variable &#39;wq&#39; is uninitialized when used within its own initiali=
zation [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 fs/proc/base.c:1985:35: warning: var=
iable &#39;wq&#39; is uninitialized when used within its own initialization=
 [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 fs/nfs/dir.c:464:34: warning: variab=
le &#39;wq&#39; is uninitialized when used within its own initialization [-=
Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 fs/nfs/dir.c:1638:34: warning: varia=
ble &#39;wq&#39; is uninitialized when used within its own initialization [=
-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 fs/namei.c:3213:34: warning: variabl=
e &#39;wq&#39; is uninitialized when used within its own initialization [-W=
uninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 fs/namei.c:1736:34: warning: variabl=
e &#39;wq&#39; is uninitialized when used within its own initialization [-W=
uninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 fs/fuse/readdir.c:161:34: warning: v=
ariable &#39;wq&#39; is uninitialized when used within its own initializati=
on [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 fs/cifs/readdir.c:84:34: warning: va=
riable &#39;wq&#39; is uninitialized when used within its own initializatio=
n [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 fs/afs/dir_silly.c:205:34: warning: =
variable &#39;wq&#39; is uninitialized when used within its own initializat=
ion [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/soc/fsl/dpio/qbman-portal.c:=
870:14: warning: cast from pointer to integer of different size [-Wpointer-=
to-int-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/scsi/lpfc/lpfc_sli.c:11910:3=
4: warning: variable &#39;done_q&#39; is uninitialized when used within its=
 own initialization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/scsi/lpfc/lpfc_scsi.c:4728:3=
4: warning: variable &#39;waitq&#39; is uninitialized when used within its =
own initialization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/scsi/bfa/bfad_im.c:378:34: w=
arning: variable &#39;wq&#39; is uninitialized when used within its own ini=
tialization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/scsi/bfa/bfad_im.c:301:34: w=
arning: variable &#39;wq&#39; is uninitialized when used within its own ini=
tialization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/net/wireless/ath/ath11k/debu=
gfs_sta.c:185:7: warning: variable &#39;rate_idx&#39; is used uninitialized=
 whenever &#39;if&#39; condition is false [-Wsometimes-uninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/net/wireless/ath/ath11k/debu=
gfs_sta.c:184:13: warning: variable &#39;rate_idx&#39; is used uninitialize=
d whenever &#39;if&#39; condition is false [-Wsometimes-uninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/net/wireless/ath/ath11k/debu=
gfs_sta.c:175:7: warning: variable &#39;rate_idx&#39; is used uninitialized=
 whenever &#39;if&#39; condition is false [-Wsometimes-uninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/net/wireless/ath/ath11k/debu=
gfs_sta.c:139:13: note: initialize the variable &#39;rate_idx&#39; to silen=
ce this warning<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/net/usb/lan78xx.c:2659:34: w=
arning: variable &#39;unlink_wakeup&#39; is uninitialized when used within =
its own initialization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/net/phy/mdio-octeon.c:48:3: =
warning: cast from pointer to integer of different size [-Wpointer-to-int-c=
ast]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/net/ethernet/amazon/ena/ena_=
netdev.c:310:38: warning: suggest braces around initialization of subobject=
 [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/misc/mic/vop/vop_vringh.c:39=
9:34: warning: variable &#39;wake&#39; is uninitialized when used within it=
s own initialization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/misc/mic/vop/vop_vringh.c:15=
5:34: warning: variable &#39;wake&#39; is uninitialized when used within it=
s own initialization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/hwtracing/coresight/coresigh=
t-cti-sysfs.c:948:11: warning: address of array &#39;grp-&gt;sig_types&#39;=
 will always evaluate to &#39;true&#39; [-Wpointer-bool-conversion]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/gpu/host1x/syncpt.c:208:34: =
warning: variable &#39;wq&#39; is uninitialized when used within its own in=
itialization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/gpu/drm/amd/amdgpu/../displa=
y/dc/dce/dmub_psr.c:147:56: warning: address of &#39;pipe_ctx-&gt;stream_re=
s&#39; will always evaluate to &#39;true&#39; [-Wpointer-bool-conversion]<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/gpu/drm/amd/amdgpu/../displa=
y/dc/dce/dmub_psr.c:147:31: warning: address of &#39;pipe_ctx-&gt;plane_res=
&#39; will always evaluate to &#39;true&#39; [-Wpointer-bool-conversion]<br=
>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/gpu/drm/amd/amdgpu/../displa=
y/dc/core/dc_link_dp.c:2690:53: warning: suggest braces around initializati=
on of subobject [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/gpu/drm/amd/amdgpu/../displa=
y/dc/bios/command_table2.c:342:53: warning: suggest braces around initializ=
ation of subobject [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/gpu/drm/amd/amdgpu/../displa=
y/dc/bios/command_table2.c:116:62: warning: suggest braces around initializ=
ation of subobject [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/gpu/drm/amd/amdgpu/../displa=
y/dc/bios/bios_parser2.c:297:41: warning: suggest braces around initializat=
ion of subobject [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/gpu/drm/amd/amdgpu/../displa=
y/amdgpu_dm/amdgpu_dm.c:8558:43: warning: suggest braces around initializat=
ion of subobject [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/bluetooth/bluecard_cs.c:282:=
36: warning: variable &#39;wq&#39; is uninitialized when used within its ow=
n initialization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 drivers/android/binderfs.c:657:41: w=
arning: suggest braces around initialization of subobject [-Wmissing-braces=
]<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 cc1: all warnings being treated as e=
rrors<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 /tmp/ccgeLqJj.s:18191: Warning: usin=
g r15 results in unpredictable behaviour<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 /tmp/ccgeLqJj.s:18119: Warning: usin=
g r15 results in unpredictable behaviour<br>
&gt;=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 .config:1167:warning: override: UNWI=
NDER_GUESS changes choice state<br>
&gt;<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br>
&gt;<br>
&gt; Detailed per-defconfig build reports:<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; 32r2el_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; 32r2el_defconfig+kselftest (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 wa=
rning, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 21 warnings, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0/tmp/ccgeLqJj.s:18119: Warning: using r15 results i=
n unpredictable behaviour<br>
&gt;=C2=A0 =C2=A0 =C2=A0/tmp/ccgeLqJj.s:18191: Warning: using r15 results i=
n unpredictable behaviour<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:114:37: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:113:48: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:113:48: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:113:48: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:114:37: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:113:48: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:114:37: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:113:48: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:113:48: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:114:37: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-octeon.c:48:3: warning: cast f=
rom pointer to integer of different size [-Wpointer-to-int-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:113:48: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:113:48: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/phy/mdio-cavium.h:113:48: warning: cast=
 to pointer from integer of different size [-Wint-to-pointer-cast]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning=
: cast from pointer to integer of different size [-Wpointer-to-int-cast]<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:435.11-439.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:437.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:521.11-525.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:523.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allmodconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 81 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0fs/proc/base.c:1985:35: warning: variable &#39;wq&#=
39; is uninitialized when used within its own initialization [-Wuninitializ=
ed]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/shmem.c:2745:35: warning: variable &#39;shmem_fa=
lloc_waitq&#39; is uninitialized when used within its own initialization [-=
Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0fs/proc/proc_sysctl.c:705:35: warning: variable &#3=
9;wq&#39; is uninitialized when used within its own initialization [-Wunini=
tialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0fs/namei.c:1736:34: warning: variable &#39;wq&#39; =
is uninitialized when used within its own initialization [-Wuninitialized]<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0fs/namei.c:3213:34: warning: variable &#39;wq&#39; =
is uninitialized when used within its own initialization [-Wuninitialized]<=
br>
&gt;=C2=A0 =C2=A0 =C2=A02 warnings generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/android/binderfs.c:657:41: warning: suggest=
 braces around initialization of subobject [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/hwtracing/coresight/coresight-cti-sysfs.c:9=
48:11: warning: address of array &#39;grp-&gt;sig_types&#39; will always ev=
aluate to &#39;true&#39; [-Wpointer-bool-conversion]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0fs/afs/dir_silly.c:205:34: warning: variable &#39;w=
q&#39; is uninitialized when used within its own initialization [-Wuninitia=
lized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/bluetooth/bluecard_cs.c:282:36: warning: va=
riable &#39;wq&#39; is uninitialized when used within its own initializatio=
n [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0fs/cifs/readdir.c:84:34: warning: variable &#39;wq&=
#39; is uninitialized when used within its own initialization [-Wuninitiali=
zed]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/host1x/syncpt.c:208:34: warning: variab=
le &#39;wq&#39; is uninitialized when used within its own initialization [-=
Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0net/nfc/hci/command.c:59:34: warning: variable &#39=
;ew_wq&#39; is uninitialized when used within its own initialization [-Wuni=
nitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0fs/btrfs/backref.c:394:30: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0net/nfc/hci/llc_shdlc.c:687:34: warning: variable &=
#39;connect_wq&#39; is uninitialized when used within its own initializatio=
n [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0fs/fuse/readdir.c:161:34: warning: variable &#39;wq=
&#39; is uninitialized when used within its own initialization [-Wuninitial=
ized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0fs/nfs/dir.c:464:34: warning: variable &#39;wq&#39;=
 is uninitialized when used within its own initialization [-Wuninitialized]=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0fs/nfs/dir.c:1638:34: warning: variable &#39;wq&#39=
; is uninitialized when used within its own initialization [-Wuninitialized=
]<br>
&gt;=C2=A0 =C2=A0 =C2=A02 warnings generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warn=
ing: suggest braces around initialization of subobject [-Wmissing-braces]<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/misc/mic/vop/vop_vringh.c:155:34: warning: =
variable &#39;wake&#39; is uninitialized when used within its own initializ=
ation [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/misc/mic/vop/vop_vringh.c:399:34: warning: =
variable &#39;wake&#39; is uninitialized when used within its own initializ=
ation [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A02 warnings generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/amazon/ena/ena_netdev.c:310:38=
: warning: suggest braces around initialization of subobject [-Wmissing-bra=
ces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/usb/lan78xx.c:2659:34: warning: variabl=
e &#39;unlink_wakeup&#39; is uninitialized when used within its own initial=
ization [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7=
: warning: variable &#39;rate_idx&#39; is used uninitialized whenever &#39;=
if&#39; condition is false [-Wsometimes-uninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/wireless/ath/ath11k/debugfs_sta.c:184:1=
3: warning: variable &#39;rate_idx&#39; is used uninitialized whenever &#39=
;if&#39; condition is false [-Wsometimes-uninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/wireless/ath/ath11k/debugfs_sta.c:175:7=
: warning: variable &#39;rate_idx&#39; is used uninitialized whenever &#39;=
if&#39; condition is false [-Wsometimes-uninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/wireless/ath/ath11k/debugfs_sta.c:139:1=
3: note: initialize the variable &#39;rate_idx&#39; to silence this warning=
<br>
&gt;=C2=A0 =C2=A0 =C2=A03 warnings generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/scsi/bfa/bfad_im.c:301:34: warning: variabl=
e &#39;wq&#39; is uninitialized when used within its own initialization [-W=
uninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/scsi/bfa/bfad_im.c:378:34: warning: variabl=
e &#39;wq&#39; is uninitialized when used within its own initialization [-W=
uninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A02 warnings generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/scsi/lpfc/lpfc_sli.c:11910:34: warning: var=
iable &#39;done_q&#39; is uninitialized when used within its own initializa=
tion [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/scsi/lpfc/lpfc_scsi.c:4728:34: warning: var=
iable &#39;waitq&#39; is uninitialized when used within its own initializat=
ion [-Wuninitialized]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amd=
gpu_dm.c:8558:43: warning: suggest braces around initialization of subobjec=
t [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/drm/amd/amdgpu/../display/dc/bios/comma=
nd_table2.c:116:62: warning: suggest braces around initialization of subobj=
ect [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/drm/amd/amdgpu/../display/dc/bios/comma=
nd_table2.c:342:53: warning: suggest braces around initialization of subobj=
ect [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A02 warnings generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_=
parser2.c:297:41: warning: suggest braces around initialization of subobjec=
t [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_p=
sr.c:147:31: warning: address of &#39;pipe_ctx-&gt;plane_res&#39; will alwa=
ys evaluate to &#39;true&#39; [-Wpointer-bool-conversion]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_p=
sr.c:147:56: warning: address of &#39;pipe_ctx-&gt;stream_res&#39; will alw=
ays evaluate to &#39;true&#39; [-Wpointer-bool-conversion]<br>
&gt;=C2=A0 =C2=A0 =C2=A02 warnings generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_li=
nk_dp.c:2690:53: warning: suggest braces around initialization of subobject=
 [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_li=
nk_dp.c:2692:80: warning: suggest braces around initialization of subobject=
 [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_li=
nk_dp.c:2692:80: warning: suggest braces around initialization of subobject=
 [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A03 warnings generated.<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allnoconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allnoconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allnoconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allnoconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allnoconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allnoconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sectio=
n mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allnoconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; allnoconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; am200epdkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ar7_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; aspeed_g4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:435.11-439.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:437.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:521.11-525.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:523.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; aspeed_g5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:435.11-439.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:437.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:521.11-525.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:523.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; assabet_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; at91_dt_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ath25_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ath79_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; axm55xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; axs103_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; axs103_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; badge4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; bcm2835_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; bcm47xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; bcm63xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; bigsur_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; bmips_be_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; bmips_stb_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; capcella_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; cavium_octeon_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warni=
ng, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; cerfcube_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ci20_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; clps711x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; cm_x2xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; cm_x300_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0ERROR: &quot;snd_ac97_reset&quot; [sound/soc/codecs=
/snd-soc-wm9712.ko] undefined!<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9712<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9712<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; cns3420vb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; cobalt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; colibri_pxa270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; colibri_pxa300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warn=
ings, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; collie_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; corgi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; cu1000-neo_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; davinci_all_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; db1xxx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; decstation_64_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warni=
ng, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; decstation_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; decstation_r4k_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warn=
ing, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; defconfig (arm64, clang-8) =E2=80=94 PASS, 0 errors, 18 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0fs/btrfs/backref.c:394:30: warning: suggest braces =
around initialization of subobject [-Wmissing-braces]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c:722:36: warn=
ing: suggest braces around initialization of subobject [-Wmissing-braces]<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_du=
mp.h:4:9: warning: &#39;__MLX5_RSC_DUMP_H&#39; is used as a header guard he=
re, followed by #define of a different macro [-Wheader-guard]<br>
&gt;=C2=A0 =C2=A0 =C2=A01 warning generated.<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sectio=
n mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0kernel/sched/fair.c:1524:20: warning: =E2=80=98test=
_idle_cores=E2=80=99 declared =E2=80=98static=E2=80=99 but never defined [-=
Wunused-function]<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 e=
rrors, 1 warning, 0 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0kernel/sched/fair.c:1524:20: warning: =E2=80=98test=
_idle_cores=E2=80=99 declared =E2=80=98static=E2=80=99 but never defined [-=
Wunused-function]<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 e=
rrors, 1 warning, 0 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0kernel/sched/fair.c:1524:20: warning: =E2=80=98test=
_idle_cores=E2=80=99 declared =E2=80=98static=E2=80=99 but never defined [-=
Wunused-function]<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; defconfig+kselftest (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warning=
s, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning=
, 0 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0kernel/sched/fair.c:1524:20: warning: =E2=80=98test=
_idle_cores=E2=80=99 declared =E2=80=98static=E2=80=99 but never defined [-=
Wunused-function]<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; dove_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; e55_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ebsa110_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; em_x270_defconfig (arm, gcc-8) =E2=80=94 FAIL, 1 error, 2 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0ERROR: &quot;snd_ac97_reset&quot; [sound/soc/codecs=
/snd-soc-wm9712.ko] undefined!<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9712<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9712<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ep93xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; eseries_pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 14 errors, 12 warni=
ngs, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:80:10: error: implicit de=
claration of function =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werr=
or=3Dimplicit-function-declaration]<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:84:21: error: variable =
=E2=80=98wm9712_regmap_config=E2=80=99 has initializer but incomplete type<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98con=
st struct regmap_config=E2=80=99 has no member named =E2=80=98reg_bits=E2=
=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98con=
st struct regmap_config=E2=80=99 has no member named =E2=80=98reg_stride=E2=
=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98con=
st struct regmap_config=E2=80=99 has no member named =E2=80=98val_bits=E2=
=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98con=
st struct regmap_config=E2=80=99 has no member named =E2=80=98max_register=
=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98con=
st struct regmap_config=E2=80=99 has no member named =E2=80=98cache_type=E2=
=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98con=
st struct regmap_config=E2=80=99 has no member named =E2=80=98volatile_reg=
=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98con=
st struct regmap_config=E2=80=99 has no member named =E2=80=98reg_defaults=
=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98con=
st struct regmap_config=E2=80=99 has no member named =E2=80=98num_reg_defau=
lts=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:653:12: error: implicit d=
eclaration of function =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=
=80=98memmap_init_zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:662:2: error: implicit de=
claration of function =E2=80=98snd_soc_component_init_regmap=E2=80=99; did =
you mean =E2=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-f=
unction-declaration]<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:675:3: error: implicit de=
claration of function =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did =
you mean =E2=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-f=
unction-declaration]<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:84:35: error: storage siz=
e of =E2=80=98wm9712_regmap_config=E2=80=99 isn=E2=80=99t known<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9712<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9712<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:85:14: warning: excess el=
ements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:86:16: warning: excess el=
ements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:87:14: warning: excess el=
ements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:88:18: warning: excess el=
ements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:89:16: warning: excess el=
ements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:91:18: warning: excess el=
ements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:93:18: warning: excess el=
ements in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A0include/linux/kernel.h:47:25: warning: excess eleme=
nts in struct initializer<br>
&gt;=C2=A0 =C2=A0 =C2=A0sound/soc/codecs/wm9712.c:653:10: warning: assignme=
nt to =E2=80=98struct regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes po=
inter from integer without a cast [-Wint-conversion]<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ezx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; footbridge_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; fuloong2e_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; gcw0_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; gpr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; h3600_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; h5000_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; hackkit_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; haps_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; haps_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; haps_hs_smp_defconfig+kselftest (arc, gcc-8) =E2=80=94 FAIL, 1 error, =
1 warning, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; hsdk_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sect=
ion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; i386_defconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 war=
nings, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; imx_v4_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; imx_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; integrator_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; iop32x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ip22_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ip27_defconfig (mips, gcc-8) =E2=80=94 FAIL, 3 errors, 2 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/mips/include/asm/sn/addrs.h:58:44: error: left=
 shift count &gt;=3D width of type [-Werror=3Dshift-count-overflow]<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/mips/include/asm/sn/addrs.h:58:44: error: left=
 shift count &gt;=3D width of type [-Werror=3Dshift-count-overflow]<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: all warnings being treated as errors<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ip28_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ip32_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; jazz_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; jmr3927_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; jornada720_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; keystone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; lart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; lasat_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; lemote2f_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; loongson1b_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; loongson1c_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; loongson3_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; lpc18xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; lpc32xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; lpd270_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; lubbock_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; magician_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; malta_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; malta_kvm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; malta_kvm_guest_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 war=
ning, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; malta_qemu_32r6_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 war=
ning, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; maltaaprp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; maltasmvp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; maltasmvp_eva_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warni=
ng, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; maltaup_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; maltaup_xpa_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning=
, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; markeins_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; milbeaut_m10v_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warni=
ngs, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; mini2440_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; mips_paravirt_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warni=
ng, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; mmp2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; moxart_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; mpc30x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; msp71xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; mtx1_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; multi_v4t_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; multi_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:435.11-439.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:437.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:521.11-525.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:523.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; multi_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 4 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:435.11-439.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:437.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:521.11-525.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:523.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; multi_v7_defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm, gcc-8) =E2=80=94 PA=
SS, 0 errors, 4 warnings, 0 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:435.11-439.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:437.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:521.11-525.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:523.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; multi_v7_defconfig+CONFIG_EFI=3Dy+CONFIG_ARM_LPAE=3Dy (arm, gcc-8) =E2=
=80=94 PASS, 0 errors, 4 warnings, 0 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:435.11-439.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:437.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:521.11-525.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:523.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; multi_v7_defconfig+CONFIG_SMP=3Dn (arm, gcc-8) =E2=80=94 PASS, 0 error=
s, 4 warnings, 0 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:435.11-439.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:437.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:521.11-525.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:523.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; multi_v7_defconfig+kselftest (arm, gcc-8) =E2=80=94 PASS, 0 errors, 5 =
warnings, 0 section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0net/sched/cls_flower.c:331:1: warning: the frame si=
ze of 1032 bytes is larger than 1024 bytes [-Wframe-larger-than=3D]<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:435.11-439.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:437.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:521.11-525.4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipm=
b0@10: I2C bus unit address format error, expected &quot;40000010&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts=
:523.3-30: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@1=
0:reg: I2C address must be less than 10-bits, got &quot;0x40000010&quot;<br=
>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; mvebu_v5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; mvebu_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; mxs_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; netwinder_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; nhk8815_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; nlm_xlp_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; nommu_virt_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning,=
 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; nsimosci_hs_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warn=
ing, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; omap1_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; omap2plus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; omega2p_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; orion5x_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; oxnas_v6_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; palmz72_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; pcm027_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; pic32mzda_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; pistachio_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, =
0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; pleb_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warn=
ing, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; prima2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; pxa168_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; pxa255-idp_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; pxa3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; pxa_defconfig (arm, gcc-8) =E2=80=94 FAIL, 3 errors, 6 warnings, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0ERROR: &quot;snd_ac97_reset&quot; [sound/soc/codecs=
/snd-soc-wm9713.ko] undefined!<br>
&gt;=C2=A0 =C2=A0 =C2=A0ERROR: &quot;snd_ac97_reset&quot; [sound/soc/codecs=
/snd-soc-wm9712.ko] undefined!<br>
&gt;=C2=A0 =C2=A0 =C2=A0ERROR: &quot;snd_ac97_reset&quot; [sound/soc/codecs=
/snd-soc-wm9705.ko] undefined!<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9705<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9712<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9713<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9705<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9712<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: unmet direct dependencies detected for SND=
_SOC_WM9713<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; qcom_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; qi_lb60_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; rb532_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; rbtx49xx_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0=
 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; realview_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; rm200_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 se=
ction mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; rpc_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; rt305x_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; rv32_defconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 6 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;stdin&gt;:830:2: warning: #warning syscall fsta=
t64 not implemented [-Wcpp]<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;stdin&gt;:1127:2: warning: #warning syscall fst=
atat64 not implemented [-Wcpp]<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;stdin&gt;:1511:2: warning: #warning syscall clo=
ne3 not implemented [-Wcpp]<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;stdin&gt;:830:2: warning: #warning syscall fsta=
t64 not implemented [-Wcpp]<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;stdin&gt;:1127:2: warning: #warning syscall fst=
atat64 not implemented [-Wcpp]<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;stdin&gt;:1511:2: warning: #warning syscall clo=
ne3 not implemented [-Wcpp]<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; s3c2410_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; s3c6400_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; s5pv210_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; sama5_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; sb1250_swarm_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warnin=
g, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; shannon_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; shmobile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; simpad_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; socfpga_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; spear13xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; spear3xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; spear6xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; spitz_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; stm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tango4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tb0219_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tb0226_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tb0287_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 s=
ection mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tct_hammer_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tegra_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tinyconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section=
 mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tinyconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tinyconfig (riscv, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tinyconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 section =
mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tinyconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 1 warning, 0 sect=
ion mismatches<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0.config:1167:warning: override: UNWINDER_GUESS chan=
ges choice state<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; tinyconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; trizeps4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; u300_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; u8500_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; vdk_hs38_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; vdk_hs38_smp_defconfig (arc, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning=
, 0 section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; versatile_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; vexpress_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, =
0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0=
 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; viper_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; vocore2_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; vt8500_v6_v7_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnin=
gs, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; workpad_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 =
section mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; x86_64_defconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings,=
 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; x86_64_defconfig+kselftest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0=
 warnings, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; x86_64_defconfig+kvm_guest (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0=
 warnings, 0 section mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; xcep_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; xway_defconfig (mips, gcc-8) =E2=80=94 FAIL, 1 error, 1 warning, 0 sec=
tion mismatches<br>
&gt;<br>
&gt; Errors:<br>
&gt;=C2=A0 =C2=A0 =C2=A0mm/memory.c:1523:41: error: implicit declaration of=
 function =E2=80=98pte_index=E2=80=99; did you mean =E2=80=98page_index=E2=
=80=99? [-Werror=3Dimplicit-function-declaration]<br>
&gt;<br>
&gt; Warnings:<br>
&gt;=C2=A0 =C2=A0 =C2=A0cc1: some warnings being treated as errors<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; zeus_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; zx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches<br>
&gt;<br>
&gt; ---<br>
&gt; For more info write to &lt;<a href=3D"mailto:info@kernelci.org" target=
=3D"_blank">info@kernelci.org</a>&gt;<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;Clang Built Linux&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups=
.com" target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.=
<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/clang-built-linux/5e57d0a2.1c69fb81.b44cf.2a50%40mx.google.=
com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/clang-built-linux/5e57d0a2.1c69fb81.b44cf.2a50%40mx.google.com</a>.<br>
<br>
<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Groups.io Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#665): <a href=3D"https://groups.io/g/kernelci/message/6=
65" rel=3D"noreferrer" target=3D"_blank">https://groups.io/g/kernelci/messa=
ge/665</a><br>
Mute This Topic: <a href=3D"https://groups.io/mt/71593531/924702" rel=3D"no=
referrer" target=3D"_blank">https://groups.io/mt/71593531/924702</a><br>
Group Owner: <a href=3D"mailto:kernelci%2Bowner@groups.io" target=3D"_blank=
">kernelci+owner@groups.io</a><br>
Unsubscribe: <a href=3D"https://groups.io/g/kernelci/unsub" rel=3D"noreferr=
er" target=3D"_blank">https://groups.io/g/kernelci/unsub</a>=C2=A0 [<a href=
=3D"mailto:guillaume.tucker@gmail.com" target=3D"_blank">guillaume.tucker@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAH1_8nCA5JcZPLFuzm2mof9XES8etXRhLkwUbMsFLfBuU=
1n7vw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAH1_8nCA5JcZPLFuzm2mof9XES8etXRhLk=
wUbMsFLfBuU1n7vw%40mail.gmail.com</a>.<br />

--0000000000000f4d3e059f94b10b--
