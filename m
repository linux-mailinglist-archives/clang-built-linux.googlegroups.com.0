Return-Path: <clang-built-linux+bncBC53FPW2UIOBBUGWSCDAMGQEVAQSP7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 605E23A4C6A
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 05:34:41 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id dd28-20020a056402313cb029038fc9850034sf16838589edb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 20:34:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623468880; cv=pass;
        d=google.com; s=arc-20160816;
        b=nM61KwCbDE+C9UsqkJTc2VCUB63kVta4tKOwJKTQdZNAvK/TfOwp4IE6kjtJUayCpM
         jcj0Xh7agEO4ASBWgqOShUzPuusU/2HZU7DMuXN7YHAWOOx5gddbc9aSlmbCG4+Cgmr0
         zvWQzS2Laq9uuw0Jkwl36CGzP0IKvnGyhmG9uNfhK1J7PRPOdNCMV5vOG0JOGXqJDN2R
         TeXbQvcDcBDsAQusOTGDrO1JIKF5dHKAggemdbrSMFrYngMkCmgpgHfzb4OcH5nG3LD3
         S59hXYOKZc9krKZ97mB11MQPIEDnMyUz0fcUeTbkpuKSjJ5lWh1uIJ66lJ9Fb/yJsfPy
         ZaHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=t+9OhmIZFv8ek9vnDa9q56lucaFzRPWNWK+67OuEg04=;
        b=eQsiWa6glguMtLafFx226tbPJcyzzhoHf6dJqa+0FANGqSOO/qiH19EP+7Qb5rJo/5
         DwCg+1XNfLu4xDxcUqvneJl3BLlMD84JzWT6gYFk6XF1em7B1Bfn0iYtsqA3WqO/mlb1
         6LX4vVw7n9yb4lJubozXgGKcAaggvpFc2+5GD7qUx8xJ0wtTUrhVus4inRzfK9ajhPEI
         s8ZYXNqgCPVuKJD2MlVxlePjdDC7NTUiE2ODQ8dmsRmaOZM810vg4mqd4X+LABP/XjnI
         NskHZ+UiquGCljkk6HlDda0x2teCag0UyCyGA1ALa1EEDD0fNh2zAR68cK6wj2Ngh3S5
         /K+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yv6m+d2d;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t+9OhmIZFv8ek9vnDa9q56lucaFzRPWNWK+67OuEg04=;
        b=FM89SaKKGOLbTDLHXI02mo1TazSEdNxigUYzqDgaUYMtSVOZ2g+X861TdVp4CmAAK1
         P47+I3P7rHuAx7silt2nN2x7vva07ZZgygOtMMxZetFIlzTBRVABGZ1MKk3C160BEYpQ
         Vs5qT9cv+vIpkK8ac9lWDC9ex45luYjdbj2GD62LQrUz/4yA2YT1A1jcnSQxNA2fHODg
         cFicF//PIeUAc4XniEF8ctlsqFlp26nKmbhScEs6dQ2FC6js0HoEoZuxE+Ojcamr9pP3
         utwptgY2OH9subv7DY5fCmgJev5JmzVhsdPyIfKgU+a4Ju33/ymhT4osJwUJuTJ2BM8y
         jBBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t+9OhmIZFv8ek9vnDa9q56lucaFzRPWNWK+67OuEg04=;
        b=KH3C95P31QJ6p+Umt7mG35oQ/7RKUJZubRFLEF2+UtgeugYtK7w6oBVRSTHj8Tb+Sl
         Mi5iNPtdL87Z6KKjd/42azK6oxvKuYnUxLe/RpvzStsxETpFcHQDcfqUQVMF6F218Z/V
         OZqpNSIbT6olZCaDPNAtpEtr/BRO27M8Sp9J0aw16F8VSk/Lylibminq5ABQIae7i+97
         Ct/kaTU75jjoyBM0Yad2SsIqKMGIHfwNyUH0eju/fENWND0nkd+oDWhWZ5tVvMn7Up/P
         fo7vtHWHnnsHpZtr287vsWcKJ00OoWjsDMlK7drBUZm8vso6heC3wIMdE2xEur/Dga9u
         bgww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t+9OhmIZFv8ek9vnDa9q56lucaFzRPWNWK+67OuEg04=;
        b=gr1YEAnN3HmcZxyWEDlitgGOLfF1lsvp1hNQCiiJUObK5MnAZvbM8ILIfr+ifRewIm
         BTVwNY7iEfrUDUeRVHR7ZJ7Re3tyJegy47pGs3nFG8UEAhQzS/cqHmEeSg71XQNjwWP8
         YqAdW/Y78Qqh8AY5GuJ55VlrBgtrm/Yu2rfIp6+/1kqTZwtKVOifSKTBx423mlZvMYgf
         7eKBUBqv+ImLBQ6W8UFa4ILlSDNHKK1mTVDMTYl6ds04it+aIj/y93EGuH94LU2AWbri
         LiFexnkUYbj0zWGTnkYDqe+jm0x8wZF4WvNZoJPcMeApI6PEPYhcIXWK0woaSvAdkWVv
         /wXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317hmZyXzmCZLQNcDo9RsTEs0hmhIrKmFLvKETzlyp5rcUx2yEy
	ScskRhVhllOg4IrgU5WGEU0=
X-Google-Smtp-Source: ABdhPJzEbxwZCqU4vRVwVMKNMXXn82n/BBL1yDjZHlT9HpqwDhsZl3JJvGHIX6j3JLQst3luG/gHNA==
X-Received: by 2002:a05:6402:1cad:: with SMTP id cz13mr5483488edb.67.1623468880873;
        Fri, 11 Jun 2021 20:34:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fa91:: with SMTP id w17ls1345376edr.2.gmail; Fri, 11 Jun
 2021 20:34:40 -0700 (PDT)
X-Received: by 2002:a05:6402:1ac9:: with SMTP id ba9mr6878499edb.250.1623468879982;
        Fri, 11 Jun 2021 20:34:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623468879; cv=none;
        d=google.com; s=arc-20160816;
        b=IyETepjNmnl7Ti3xv1nRhkn4m2b8q7e6CSS+P67mR+tIvmaaJa3vISmeHeoU3KZo5M
         8KEB1JH7m8ev3ldS6VeGVC15ULaQO8eC9IjcENuSZlgCMlaWEup2CsQopEe8zCR3mA5M
         Ij59RcCfEcET5zY9d7q0LpvF2LmtBfqxz5x3gSNje/S3op+nuelOKY+1JmX/1nC3x+tK
         V6oFrIReFQ9TuGiQIK5EuN1ic8YvgD52oC6+8fA/VmFRPOA2g1GGUejIJPMtoI1pUelk
         OqvZ+VS6Y0X1LNpJrMuGDSrWI0k3CT5c5oA2gEF+S8y30rrCl7tU4ouXiN8qkmHZt58o
         XMyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=EyMkdbxlrBJgSTEhaFI7ifZ2pbagknX2xIpwB86SUL8=;
        b=rVO+eHo+kWcoTL7bPIFX82HcsNfN7+6bGmGaaoBYDdZ0a2yu3G6V6PWwvkFuO7PoeF
         8BA/s23N9cl5qgTQYdP3Qf+W3dfICPWmPWjqGeGSydKWUb4gDAMN7XOm06pSivcyTLXe
         whZ2j8Npuy5SvOC/EcQURtrQj+YQpwKwKbwrCJJiPtqm377LwI7YVJ2cfzMVAqPYGEUA
         KIRf2ESKk4mYS6gX6qpzRSA/ZpWqpxFKxfGYsVUAqlXo+PLRN2phdRI6S/s5zeGXsLap
         9ccWLEKcaI7Mk8zrID5NaNc6Q3zWbt4tCUmrzTAD9/mXNt2EcyyYRVbSS9TF0/pffPIG
         944g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yv6m+d2d;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id e26si360139edj.1.2021.06.11.20.34.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 20:34:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id f30so11553716lfj.1
        for <clang-built-linux@googlegroups.com>; Fri, 11 Jun 2021 20:34:39 -0700 (PDT)
X-Received: by 2002:a05:6512:3050:: with SMTP id b16mr4490672lfb.33.1623468879682;
        Fri, 11 Jun 2021 20:34:39 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4ydkw9h---3prwmt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:6897:4dff:feec:7495])
        by smtp.gmail.com with ESMTPSA id f19sm943250ljn.88.2021.06.11.20.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 20:34:39 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	samitolvanen@google.com,
	morbo@google.com,
	wcw@google.com,
	keescook@chromium.org,
	jeyu@kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/5] pgo: Add PGO support for module profile data
Date: Sat, 12 Jun 2021 06:24:21 +0300
Message-Id: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Yv6m+d2d;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12b
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This patch series intends to extend the current Clang PGO code to
support profile data from modules. Note that current PGO can and *does* 
instrument all kernel code, including modules, but this profile data
is inaccessible.

This patch series adds pgo/<module>.profraw files from what
per loaded module profile data can be read.

The final profile can be generated by merging all these profile files:
llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw ...
and then building the optimized kernel.

This v2 patch series is still an bit of RFC so I'd like feedback how
to do things better still.

The patches itself are based on Kees/for-next/clang/features tree
where I have two of my bug fix patches already in. :-)

I have done some initial testing:
 * Booted the instrumented kernel on qemu *and* bare hardware.
 * Module un/loading via test_module in QEMU.
 * Built optimized kernel using the new profile data.

Jarmo Tiitto (5):
  pgo: Expose module sections for clang PGO instumentation.
  pgo: Make serializing functions to take prf_object
  pgo: Wire up the new more generic code for modules
  pgo: Add module notifier machinery
  pgo: Cleanup code in pgo/fs.c

 include/linux/module.h  |  15 +++
 kernel/Makefile         |   6 +
 kernel/module.c         |   7 ++
 kernel/pgo/fs.c         | 241 ++++++++++++++++++++++++++++++++++------
 kernel/pgo/instrument.c |  57 +++++++---
 kernel/pgo/pgo.h        |  85 ++++++++++----
 6 files changed, 342 insertions(+), 69 deletions(-)


base-commit: 0039303120c0065f3952698597e0c9916b76ebd5
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210612032425.11425-1-jarmo.tiitto%40gmail.com.
