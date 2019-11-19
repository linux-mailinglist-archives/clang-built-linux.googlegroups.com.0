Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK7MZXXAKGQELXMVMGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C711012AE
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 05:57:17 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id v188sf9277605vkv.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 20:57:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574139436; cv=pass;
        d=google.com; s=arc-20160816;
        b=jaDRsiiPU1L0iv4URpIMA1oZcQc+8d6OTqXXj8/GWaHC3yOTKADDf5dZpAR5+TS9xZ
         gRracli+pjfwC2/QmQR/vKgPuqC72JwFgalPDSbet1HopA7yzY9lcGZtbe++Fp8JFYhQ
         vzbnfnyn0HgjZXl1jAFWiatllJCzV2+D2V/D68t6My0y04jCb7v1Km22WUFeSJTCXwOx
         Xq8hujhZ6bPPqILlve8tDszpfMMPdomLE6susCKM+pNKd+4zsC/tz6GhOns+wIzIoniY
         WJADoPbn+y7eZJGleQilyv21NOg4CCxokDSpa2RO3l5plKtRLVwjsL5dEAeH6Cvb5Omu
         bGtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=Hi7v6VcnIxjbJqxavH1hc/Gasa5SQt9ReemOarQHOuA=;
        b=KTgS41p8GJq/SyT0IeucVNT8kEVMqa3Lq9kWpDoR9EM8a46qBMKCkOOMUuEgVD/flB
         XTQ7xCELLEq3HsaHhVryyKY0mJwRYKSaBvZRNQ8WKI4sIeFiCoHFhRJ1IL5/7ggGjeQ8
         FwsZFtl1062E/jfuhxb8s9ZSjL45tiqx4RiFZHqbOrrdrQFeFxX/3pBXPs5HFg0bz0u1
         H+KSSkIUkemXR4nlEY7nLjr2nUcYIaiMJoODsKoX0VRJm7RriFdjhCzVdMHlO4z7aXa/
         hxZ/cOkQsE9AeUpJdIngHbdbzfxPno9Pf+LjsLRklkwwuFjGv9lOkxwuv1UOrgUJ/Llh
         A36w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qTlGheLn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hi7v6VcnIxjbJqxavH1hc/Gasa5SQt9ReemOarQHOuA=;
        b=Vl0BWs97GXhGGWQ1pnQzKEg9G3OJRTQ8DhMgDh4a7KgoDGOS7NkwXg7PqRSFuN6lsp
         +evN02PLLyTuzWw76t3vtsZXrvaTSsm8w+Al2RiRVHA9OzdnuUi19+8cbziFwPK62rKG
         Y+xhPdFRf3iILvXDOUmgbFj84SJPnT2oDBOFPLhbsMcrmoKa83ShkiBzbUca9O09jufQ
         ZHMS4v7flCJekx7FdpTdrAZxiSlruVwXsXw/gIALItEwkIB49zNifCk3wE59OlM7IdMR
         tK8Tjk4htn7EVMUHhnrplmS0DGoydez/SEV/6286h7OVv7Aud6qLP6whlhfzQMkzOMte
         HoUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hi7v6VcnIxjbJqxavH1hc/Gasa5SQt9ReemOarQHOuA=;
        b=XFLA7TozqNkFeucYXmVhigQmBU4EOQfBRq2csGeRjr829TkP13ceuZfMniDWaOXOY3
         EwI7Ouq83Y1euvh1ZYo5k1COV5VA3053za4SJ3b0ufBY+Kfa8qHJ4jtT7cNiInBGvJ/u
         b6tIhJS81ByabC3bPJrzEZ3YpwrKaG5OqfD/QSvBq1UonpCO20CmTBfRTkCJ5C5sqi6y
         aTD4VB2PaZ/JD0fNB+vqAcAWRkI2REu4/XZRLW5Fy3z73AC+kggPF1Ctf3jQ+5wvzFCd
         XXd+AuD8TWRCe+a5jinIVg/pq43QrcWJS+TEk/SpnxLmr1Sh3okWueirbzDQp7efDwIB
         r9tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hi7v6VcnIxjbJqxavH1hc/Gasa5SQt9ReemOarQHOuA=;
        b=CcNaaLlYtE8xnblTzFg0/ZwKQOnUOReX6/+DWrt4TP0bUs4lewPlSoongtwn8hPqOZ
         erRVGLuSkHRrIEks2tpG8/+CanY0ATnSOePn8/Qi1S9rBHfHv8p60KCmzQb2a3od5hl8
         j20uoq5rlMWXCYa3T8iTvuaEIOBjPW5DxlSPpTGFTkIdb+fqNg3IU6LqeCl2y3UOqTuA
         ZZY3Odbiw4k5J95Kloq2BnBMGCa5LAbWPo4OrxJEv3g6ym6dRq8hA20566IM5ok6el07
         qQUWhxckJmr/RWUhgyC1Mvmz4pGytj5QUj8XdUiC/sau37v4qQWjQfor5EpII2StPNmH
         EbCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcLbI0yDg3zVQRyACIjoeh944v7PJLuCx1oLFLLA9kuCYqkeuf
	Nmg9uRkXHv4UxWVCEId8X2Q=
X-Google-Smtp-Source: APXvYqzfZiTEJHPz557dx9+4FsaUjXGx4/tCkN7dw7vgnQIeoNizcKVBh2Qsj1+1aHpErvoUz3/gwQ==
X-Received: by 2002:a1f:9553:: with SMTP id x80mr19688210vkd.39.1574139435839;
        Mon, 18 Nov 2019 20:57:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:22c5:: with SMTP id z5ls1284887uam.6.gmail; Mon, 18 Nov
 2019 20:57:15 -0800 (PST)
X-Received: by 2002:ab0:608f:: with SMTP id i15mr19119651ual.20.1574139435488;
        Mon, 18 Nov 2019 20:57:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574139435; cv=none;
        d=google.com; s=arc-20160816;
        b=cJhUObLP6RI4ICapIa1hOmEjuHMDdylSobRlSvLpYHMunLXP26SYAOv0uTAn1L94UG
         XEQT+JbDnQ4J2DPl1cJRVMZMVHn++wF2TlVxgJyDpMr060sN0nMj3mM1PgT/em48ogq2
         enPh+YUG0LAPh39utzw0Ts412f7RJo9TLlj1j31zUG022z6Ls6ipvn2FkDWv1HxsURjH
         5bn9W0ZMHqKXUfaFn7EV6pQj0shTZpgwZZKleAqzYY3QeFaMbUmfJTwewCWlmZDWbPRH
         V7GmHZfo8VDi0c7mT7Ca3y5eiEny7vvsejUFzs6wkEpSaf6kyZGpsPXaDdsCJ9XXgq2u
         /j+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UvkLGHgSvEIQI2WG9EBqccOe+HOcwjAc1fTcAv9zhAk=;
        b=nCe7wl/XTwjB4LDGzWcprENuKBeWwlXCBCShdVZYF/GTizofj9KTrA3RnBqRgWppoo
         S6HNgWnA6U2PjckLSjeZRuHBHdxeBkQQ9AK59cJeGqjNPJyOkihh6hmFDgubjE6mslGm
         RKXM2fJlrvNiBZE069VvSHIaYMKLYaz4AYUQSXTILya0YhNh6nVy2POVf9y3Z/8yvBtX
         /zQ1MrMg3KNVR1aFNCtAzxuLBSpp/PWjxgfcB7CSH8TqIEhkk2pdcdocnucqI16g4sdL
         Y7nDwvTPufo3ktenOqx5KOCoJFLr2S0gfCluRGJMz1z0UzYBLMge4S5+St+S9M+uLbyc
         V0RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qTlGheLn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id 192si1127238vkz.3.2019.11.18.20.57.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 20:57:15 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id l202so17729417oig.1
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 20:57:15 -0800 (PST)
X-Received: by 2002:aca:4c14:: with SMTP id z20mr2385666oia.76.1574139434761;
        Mon, 18 Nov 2019 20:57:14 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id e88sm7019765ote.39.2019.11.18.20.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2019 20:57:14 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v5 0/3] LLVM/Clang fixes for a few defconfigs
Date: Mon, 18 Nov 2019 21:57:09 -0700
Message-Id: <20191119045712.39633-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191014025101.18567-1-natechancellor@gmail.com>
References: <20191014025101.18567-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qTlGheLn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

This series includes a set of fixes for LLVM/Clang when building
a few defconfigs (powernv, ppc44x, and pseries are the ones that our
CI configuration tests [1]). The first patch fixes pseries_defconfig,
which has never worked in mainline. The second and third patches fixes
issues with all of these configs due to internal changes to LLVM, which
point out issues with the kernel.

These have been broken since July/August, it would be nice to get these
reviewed and applied. Please let me know what I can do to get these
applied soon so we can stop applying them out of tree.

[1]: https://github.com/ClangBuiltLinux/continuous-integration

Previous versions:

v3: https://lore.kernel.org/lkml/20190911182049.77853-1-natechancellor@gmail.com/

v4: https://lore.kernel.org/lkml/20191014025101.18567-1-natechancellor@gmail.com/

Cheers,
Nathan


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191119045712.39633-1-natechancellor%40gmail.com.
