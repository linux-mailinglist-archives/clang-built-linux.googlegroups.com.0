Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUGVUL2QKGQEPSVR44Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0EC1BCF8E
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 00:14:41 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id x2sf208816pll.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 15:14:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588112080; cv=pass;
        d=google.com; s=arc-20160816;
        b=OlAyys1VpAGNSfEdOuKb1kdVX7oWJ58K756EasbEzcUWhkQHCbD735xZwcsX3LDCoE
         m7uxHeInPsOVPKdlYeyuNFCTd0L6um3PtlI+gsbU7uKA4mDXXl0hawgNZ6npyf1xPjmp
         2mDng5XPHpdEHFnbqqQJx0IolOkYgAzACIdn6e15asLLZc3bd2ri2G5fpxrrxY7roBZ7
         +unZpK9OuZYLZWu8eKA7ajTdaJYNq8HzbcEP5m2D1rHOCgXXzhbHVsGpGcxCKtsbrSkc
         LTSCsAX8cTjBuygcsxrnDs8yZhKJKcpyOQjQLRxkAeeGVnmLmYlV7uQdVOTaD5bdeRWB
         oDTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=Sl/b8jJ1D+E1QTZZWGTGYnECge2WRw4qsdHeWda4UWA=;
        b=wBGksPqtPkb+RggPkXH/WFnt+11jN+JwJCqabXVa0cRlqw1TVSohFagRqh1lxOoPAy
         ubqKlMKTSCqPltub8cAeOE17ZEDHHsIbwoXhyKglwnKD8WJPD9tFM9nknzcX2AeaWu8/
         dH5B5djC4dgDydNhMhpQQlYC2fmiTi+8wuLFxQPFRbwaM1a9Q3HA9V8hBBz5PeMRsrvW
         /ff+jQj3qcpIJa0bdCIDXk8Ap/I6q84VsIMcD+eTXPac/GIrv2I4DWZrkmWsC0Audm5W
         oDTlRtm+QkBDRz11w/8gfzoor90/u2rADsRHin06qgVZCjAJGyq0BxhH57JGPx687S2m
         6POg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L6F2pSLP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sl/b8jJ1D+E1QTZZWGTGYnECge2WRw4qsdHeWda4UWA=;
        b=MTjQb6DCBeOnRl/HSvEnKPA1SB/Vjfy+2J2rYotm4x3dUG8zpC7PGjjDNC6joz1L7f
         Cani6Zm6T1dZ6FkFvfJECycmCzFJwAubUsG5EOGpI/AhZCfzjt412pI6WPyHGYkbqkPV
         WrBJV1T84VVgzTnjZR6/jTrfxSPG/8aVt0iwq9Pe63tPWAZkXbeJCIB7sDketob/kNB6
         oHCeAxRshsIR1Bv60iYjWGP6s1EPJOl7E/SQ08rrCUfeeDkjE0XPv/hKnUNE4wgKJOXY
         L+C4DMXSxGIyc6CwdiVCu5St97CjdNyoYhYYgkTN4Z9nMe8tibEH9esoWk5YO8zfIsyp
         hu/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sl/b8jJ1D+E1QTZZWGTGYnECge2WRw4qsdHeWda4UWA=;
        b=c8/yBOIx2K5QqiUj3IdpDiUAbW3+QEgZ3D7dinpnqMgf+1Zm67eVaXciEd9dpnwOuL
         xfp/RI+YHf2K701DoaWLnrXRYJ9tBRRfQB8SyU8hoSdeKN7ARaH9U4rQqi7yDALjWMfh
         oXbHLhqulpoBZuhCl3zJw460NH8GfKdAZ7ZERy+GM/SPjiD2m2Nmt8p/O+UsgMJtL0H7
         nCjucKubKPosgh7d5KMfLfXqH5ApB/alcibRcGyyYmHj0F+IIeAwy301mZ00M0KONok7
         a1FOkXcUzdKnCKq44TtNxBH9BY/I5ANd5IYCGAc3TRTp1/OjBdPHl5Uk6z+jmK2MJpon
         x7Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sl/b8jJ1D+E1QTZZWGTGYnECge2WRw4qsdHeWda4UWA=;
        b=dRtDtRoMFutgkjSrijZlwZECfTaRNXfnNMhHTqXgZyPTyMdLI1TOxNf/SE7sO9AyUS
         rHivVkFqKVD8RHqh0/ISJVfE86FOAC4AHa/jCknFjRfHB5a3NtHhKvTeBQH3OXMvxcsn
         d0deHSqD3iIcJFaVGVODX/geQBizQvL3WrG4k3UINS3s5o1hshfAEorQrB278TQ/lQGe
         nZcucj3mO0yahpe28kY3mMYXrOB4CwDuMwhUIPXTSaxq9kJGNgPae5/PI7iHphcd3s9c
         w77/6ZKc94i/vxwCCimVOVmfvB0KrxdsJqzNAvVXq+ZiRROg92mf0HoXsW8SHYbXU2Ti
         gAzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ/qF3/ONMhikxackWh8/zqV2dcwn67JS/L6dc3ICBfsLqRYLpC
	NKSUGK8fSkH9CXsnPzjF0fY=
X-Google-Smtp-Source: APiQypITd72VTFvzZAKjtuNFIWMhvHtmkGJc1JS3E3ERC/JrDTG8zUa+ayyn9K74W5aDomzrNNT9oQ==
X-Received: by 2002:a17:90a:648a:: with SMTP id h10mr7567501pjj.69.1588112080360;
        Tue, 28 Apr 2020 15:14:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a03:: with SMTP id v3ls22454434plp.11.gmail; Tue,
 28 Apr 2020 15:14:40 -0700 (PDT)
X-Received: by 2002:a17:902:a588:: with SMTP id az8mr29840900plb.338.1588112079962;
        Tue, 28 Apr 2020 15:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588112079; cv=none;
        d=google.com; s=arc-20160816;
        b=RD6GNFzLsV1klkaEqCBnz5wVQKHsmpt6WbNZceCDMx/uAdcz8d5/AloqBM5secvBKf
         8Qlsa0a3d4MDoJyFYvVXGFCb4KMjT7jg4NNR/i2K8ruy217tXZLKa6n6zFziZR+88IOy
         wLQcKorDRDoxLHarvVEhNws72tZHXXi56Lfyf8EcKbMuvbSSUMvIeTAt9JPhOc4SQ2BB
         SL6W/TWBN5eSFkRMMST4Jq5KlZtj1QAOsDdtU0lyeok+ws3Xt4VcjOJDf0wu87lrCr91
         g+cQFNLeZyii8eIqGeUh2/jL4lIlEbKmCKUiOoMx7gbcOCKipHG/w3GaUYVbhFFFqVFv
         Vx0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gw3ps5zK5zSBmyFNg+4aZWNwqGcQxCszeQ7AAe08xO4=;
        b=YfmiMLpuCrMYJw/IrF9npotxTv2wax9l/lLoq5tjotSENxFCvogehjj3R/vMTjJNmC
         itEdns9/HRGxhsAEbU9XZCJk6cooNQ9lz4X+PGrsugKuewUwAQZyY/n1ElegXoTmJZJx
         YI1rQ13km3cFoX665SKwE/jebmUiNmCa0MxBV7AVXI3ueAtyKPED1G4XlW8NySlQb4sY
         xmO+/cGdr5fyg/vtzj54KreJGPWw2i5UrD72wvjfCFM795goOhwR2meMIAiaLM26LN/I
         swKdJU83fHxdQLxq9PUkslkriE4Bz7REUWccyvPKQykqu6g8qjWP4KUqh6SHErCWwsFF
         XXqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L6F2pSLP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id c17si433072plc.5.2020.04.28.15.14.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 15:14:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id a2so4549637oia.11
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 15:14:39 -0700 (PDT)
X-Received: by 2002:aca:cdd3:: with SMTP id d202mr4448886oig.162.1588112079435;
        Tue, 28 Apr 2020 15:14:39 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 186sm5267476ooi.30.2020.04.28.15.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 15:14:38 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: [PATCH v5 0/5] Allow ld.lld to link the MIPS VDSO
Date: Tue, 28 Apr 2020 15:14:14 -0700
Message-Id: <20200428221419.2530697-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200423171807.29713-1-natechancellor@gmail.com>
References: <20200423171807.29713-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=L6F2pSLP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Hi all,

This series allows ld.lld to properly and completely link the MIPS vDSO.

Patch 1 adds ld.lld support to Kconfig so that we can avoid certain
ld.bfd checks.

Patch 2 moves disabling of the VDSO to Kconfig. This allows us to avoid
a warning with LD=ld.lld during the clean phase, when we do not have
access to CONFIG_LD_IS_LLD.

Patch 3 prepares for the shift from $(CC) to $(LD) and is probably a
worthwhile change aside from this series because GCC 4.6 is the minimum
version allowed to build the kernel.

Patch 4 does the actual shift from $(CC) to $(LD) to link the VDSO.

Patch 5 allows LD=ld.lld to build the VDSO fully through Kconfig.

I have build tested 32r2_defconfig, 32r2el_defconfig, 64r2_defconfig,
and 64r2el_defconfig with GCC and 32r2el_defconfig and
malta_kvm_guest_defconfig with clang. There is a separate issue with the
64-bit configs (https://github.com/ClangBuiltLinux/linux/issues/884) and
ld.lld does not support the triple OUTPUT_FORMAT linker script macro so
32r2_defconfig errors out in a manner similar to GCC without patch 3:
https://github.com/llvm/llvm-project/blob/46a75436f811d0e6a2c76c669140a7e9471cd2a3/lld/ELF/ScriptParser.cpp#L430
TODO: File an LLVM bug upstream

Please let me know if there are any issues!

Cheers,
Nathan


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428221419.2530697-1-natechancellor%40gmail.com.
