Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBBGDSWDQMGQE5NTWU4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 705E03BE41D
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 10:10:46 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id c20-20020a0565122394b0290328f0b3dcdcsf699153lfv.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 01:10:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625645445; cv=pass;
        d=google.com; s=arc-20160816;
        b=O/TOj+ny6vhN1xnCCOkaaJIjSwjtW9lRDzcyvD71OrMD5oTwQssEgd3iix2Xuo0ezC
         ulr/3paR2GYKD0xfl1HE7hesIpvS++l5TO8U9HYHk3+rXhDCVmzVs/5K25vkqdgoh8YU
         qqbHS2viI0VcVt0AjpQmIPlVVnHz1ZRDMrQp1A7y0Q3mCnW7WeDyBeBFlNAjjG5U36xJ
         gLG2PpBl3W/EO+bt3l584SaTBKxvcQRvZMJp8Qsl91YcAmPV9Rzfjn+SmMLmzeSwhhJm
         vIS8LtZ5/0xp3Crx6U6FSGcQv42QiajK6/06NfFqPJAUVereKlgQxXB2g1zcB65clE/k
         42zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4QYBxhKkjdKWK0X1cpstQmmQE6rSZ+yZSf2+wotKfa4=;
        b=0M1oM1D4WueILQpEr2/Pth9pGqylpkmWl7A9jwxgQ+9dXbPMDxiAwt5edLBJqfSQqR
         1ZypbXgSsNYWiuBSCcbC914T92k7sA/TyWK+sQMEqUmyYdp1F71s49355mXYbUjxhx50
         oDLypfhTinFHFPL0ihVwpewU7qFdq6uh0MHS620XR3v0/y5lh/+qYxkQYfy0MrFm6bP6
         gaolOnbvzO7qMm71DI6cPdHPJY1kXWPaXxlC1mtInsfdjlYU9CNvQTAWckhHmPVML6k8
         DW8ccKr+dYXbR+ZkTpsJsYRMM79hSoGhe589EDeKpsIls1dcWC7flOUJcrg2+GNRq4CU
         VPcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MvO+u35O;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4QYBxhKkjdKWK0X1cpstQmmQE6rSZ+yZSf2+wotKfa4=;
        b=ivG5yo1PRzRD8FfPISC1XcSesFtyApL3uqrv2lHD/iYyheT+dYcE2NrUyIXG4IfOsZ
         UfDL6BC7g+x4+i1LFAixjOlGGWwVS9DNbEfPXgUIrHZOFm+WxXKDZJf+5nYjjLlF4nyF
         HbDJhom2YR7DtDJaRfL4RZ3+/k7PODbDJKfpP2n+Y6lCLxibKCThkrQSA01btKEeo3e8
         xio8uKeWvZTqsCHb47OCO95Lg5TE2StQUMwbxVINfMxDDVmgf6vY70/hr0v5Utx46Y1S
         SoVOFJ4F0HMUsd+s76DWnxEUH0pQVsB4tn1n7FYROZVSymajgLkfEMuaA1d0ysVWD2wM
         b/zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4QYBxhKkjdKWK0X1cpstQmmQE6rSZ+yZSf2+wotKfa4=;
        b=K3EofaGS87zx4Ufo3NDLvtxVP8owHgt41F6G2XVpDqUzsqcCBgEihOf5Fsj9viN87w
         KGYTNosc4ZfRnD9efviJYLMleW0jgaD3/fqBZvEBgLrJARELXJvHm0/neVwLkaNR6wdN
         flWhf7gYVNVo6/tKl43K6IU9cZbMWMYVEmQWJ9MAkl8LjdNEFxuVdnh/2iOaIPA/iQ1R
         TBk1Th2dQFheCaVl1atuNHZqOYoSdoC8fy59oTFtZLngxo6yoaXwKF+WkGaWTZBbJHI7
         qDS/ZRYIUbTJNKjTVXRrStfPFRUiDX5U8Rsh/0tI4HAQ1yb+W5COmNZr7HfY05Ioz5aE
         qVgg==
X-Gm-Message-State: AOAM532bVVd8rHFmjitWWXgSTZNfgQtvTT53s2fygfqZovn4WivhH7uV
	3CZEpH7km8h5twsKw8wjcYY=
X-Google-Smtp-Source: ABdhPJxk6i/slj3/e6NNsMYqGTZ5sngWTmyyIjDWl1LxgAN6yBzt+AwJMII+Ru/ok3xSfecTfTVeOA==
X-Received: by 2002:a19:6513:: with SMTP id z19mr18560741lfb.420.1625645444990;
        Wed, 07 Jul 2021 01:10:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:805a:: with SMTP id p26ls202206ljg.9.gmail; Wed, 07 Jul
 2021 01:10:43 -0700 (PDT)
X-Received: by 2002:a05:651c:10aa:: with SMTP id k10mr12437313ljn.114.1625645443670;
        Wed, 07 Jul 2021 01:10:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625645443; cv=none;
        d=google.com; s=arc-20160816;
        b=NCY4buPcpXN7i7qCn42TtSSHd7R9DoY6w3/n/sW4RnC6Vcu7v7OQAGerF5m3RmheKr
         dfzgxd3HmMY4fmTaGsgcTUh3dEFw7z5KT1tPLlyDmBJ6nuvUo0S0Eb9X2C4IDPc2L2o/
         p8NfKFQdfszzdKRjAjwb22Ao4j7avhmVUdLR1QcKl8eFFb2HCgOWD2YIBHs8DvvoXs1b
         tpz/k0RV2D4cmsg71QguCxuXa5AWIWnG0T0Rw2psouL5eA5UdC+fEBr4S5OLBPnUv01k
         bdgEOnraP+SXnI2w/TjShMsS5Pc9Te9Si6CBb1SViLPhVpX5qakzDe6rqP+LXFM9A4FP
         GCRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=gHdncZ3P6g+2TaLtcRB/ZmZ7HXwhAytQ4tmQta2m+MU=;
        b=qvrBXzhTZLuTl/ZDDDqj0L1Z3EWaGj/Vj8eLcDzUsIicsKFbXdH/o2XmFqxFLqEPII
         p6JB6rLiSYGiq29YuoOPvJTSeMefsXVVSjuTcPBo1ImgyqqqbsbhVc4i2FILGy+A8IoY
         wxMZv17yzYIXUt6LGSkZEY/X17ZdeZ2Sb0FaDgSy2o+SztPMVRPv0eecQBsmzHUaszFn
         hv274WJgCxTAD0eD/L4Dd97CVJBX6cNxkE13sZZsEwyb92hr1NhutxxtOXckJ010lNsd
         R1uYGUBzJml6T6t4FvPSdKvoUVYD2sqZsRq7tK/IpQk3MvNOHOMd+S5D3mISX9jXom5O
         i0bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MvO+u35O;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id n18si478719lfu.12.2021.07.07.01.10.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 01:10:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Received: by mail-wr1-x42f.google.com with SMTP id l7so1043476wrv.7
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 01:10:43 -0700 (PDT)
X-Received: by 2002:a5d:6e81:: with SMTP id k1mr26452325wrz.144.1625645443442;
        Wed, 07 Jul 2021 01:10:43 -0700 (PDT)
Received: from gmail.com (178-164-188-14.pool.digikabel.hu. [178.164.188.14])
        by smtp.gmail.com with ESMTPSA id w9sm18616575wmc.19.2021.07.07.01.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jul 2021 01:10:42 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Wed, 7 Jul 2021 10:10:40 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Bill Wendling <morbo@google.com>, Bill Wendling <wcw@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Heiko Carstens <hca@linux.ibm.com>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
Message-ID: <YOVhgNRjEWSnjfcg@gmail.com>
References: <202106281231.E99B92BB13@keescook>
 <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook>
 <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
 <CAKwvOdkcKU4K9LWTymmzi_c0wKPTQjWEbNu04WOd6D-EcnWDSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkcKU4K9LWTymmzi_c0wKPTQjWEbNu04WOd6D-EcnWDSg@mail.gmail.com>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MvO+u35O;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
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


* Nick Desaulniers <ndesaulniers@google.com> wrote:

> > And I really hate how pretty much all of the PGO support seems to be 
> > just about this inferior method of getting the data.
> 
> Right now we're having trouble with hardware performance counters on 
> non-intel chips; I don't think we have working LBR equivalents on AMD 
> until zen3, and our ETM based samples on ARM are hung up on a few last 
> minute issues requiring new hardware (from multiple different chipset 
> vendors).
> 
> It would be good to have some form profile based optimizations that 
> aren't architecture or microarchitecture dependent.

That doesn't excuse using an inferior tooling ABI design though. By your 
own description proper hardware LBR support on the platforms you care most 
about is either there or close - yet the whole Clang PGO feature is 
designed around software based compiler instrumentation? That's backwards.

The right technical solution to integrate the clang-pgo software 
instrumetnation would be to implement a minimal software-LBR PMU 
functionality on top of the clang-pgo engine, and use unified perf tooling 
to process the branch tracing/profiling information.

In the main PGO thread PeterZ made a couple of technical suggestions about 
how this can be done using the existing hardware LBR interfaces of perf, 
but we are flexible if the design is sane and are open to improvements.

I.e. try to commonalize the tooling data as soon as possible - not very 
late as in the current proposal, exposing a whole stack of APIs and ABIs to 
clang-pgo specific interfaces.

The "LBR data unification" approach has numerous short term and long term 
advantages:

 - Hardware assisted LBR tracing support out of the box on two major 
   hardware platforms (Power and x86), and on some ARM platforms "soon", 
   maybe sooner than this feature trickles down to distributions to begin 
   with.

 - GCC won't have to reinvent the wheel - they only need to make sure they 
   can generate the minimal LBR data. In that sense perf is an 
   'independent' tooling facility they might be more comfortable working 
   with as well, than a 'competing' compiler project.

 - There's even a chance that existing instrumentation can be reused - or a 
   relatively self-contained compiler plugin can generate it.

 - Lower maintenance overhead, lower risk of subsystem obsolescence.

Binding this feature to clang-pgo on the ABI level is not a good move for 
the Linux kernel IMO.

So until this is implemented properly, or adequate explanation is given why 
I'm wrong:

   NACKED-by: Ingo Molnar <mingo@kernel.org>

Both for the core kernel and x86 bits.

Please preserve this NAK and mention it prominently in future iterations of 
this feature. Please Cc: me on future postings.

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YOVhgNRjEWSnjfcg%40gmail.com.
