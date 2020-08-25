Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6E7S35AKGQEHXGJFDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D19C252394
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 00:26:01 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id d24sf30400qtg.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 15:26:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598394360; cv=pass;
        d=google.com; s=arc-20160816;
        b=hHHdX7axrL54Z5rUFMerK2LR/6SWqlUxt9cleFGZ5RCKAF+pPb2HCDS5dUQzWy9hqm
         PBgGooVo9jtzueCbhysNPfg3apvdUu54MsoPR9jEevvC1OQXgvwYa2hVGroSvcHHXxH+
         /c84zypAbWWPAyY+61NKXAN/K6h7bcc5ix5DM5iBTGPiSX5chDx7Bz3+zzwhmGNm4jpH
         u80BvieOs0CQyByAaEhjt4qpVSg3bl3+I3Noc4FVD6/2fNz1A9U+pk2B8qAjq72BgN0/
         mokGiN3ucNWa9KVMFZ1b/yf/2hBwLYbt6mgkd+jwYKETloR24HnzDUgF6YDCX6uRaXwS
         DA8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=YzlZXfwzt+3WaKKUyGo8l3oRaABy7D5x1WuTbUEkIgc=;
        b=duy3CkZpIwgUV+0cmj7T4e7y4dFpwVzR/nMYc+bWlAy8CCZ/xzGmLgJRVpNdiM6Scy
         AoL1hmFpIphgM5TfWIeo0YB0EhOD3LBjiwUKeimZykLselhbodTW3u/FTaBL0n80WrQu
         9f8p9Zm/K7NSvVRF1Vx+D38Rn3l7mNIhDynow1DkoFR46wdJ/pZAruvEAXkxPLYkt/db
         7sW0gul06GkreX4MEAvQ3G8nVGLwInfoK4++D8q8kH/ylcLFwT7SiDBxpheOiJQBef1M
         8AYo68aXvBnoS4SU+fk4c7TCjX2fJjQnDDF4YSLFbcMMVdcAXUTS9jgD402CzarzbmFa
         BjYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fOK1Krh7;
       spf=pass (google.com: domain of 3949fxwwkac4xnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3949FXwwKAC4XNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YzlZXfwzt+3WaKKUyGo8l3oRaABy7D5x1WuTbUEkIgc=;
        b=m/DB4gxH3JZ+mRr4Uyd2/aSzPswLEviNC/HLLtIfg5E/fk35Q57WjdOOmOq+8wlauS
         krs4I7+fB86rNj3AyqaZKgGwcT9MaHNuXy0zeb/gUb4y2wm3IuB6ecmfMYeJe5WtHcc5
         vMZZoq8y7cDVylC865igX/Kq3yn4KTvuvBL5HUIkMdmEIQv8s5auAElbM4q1Whq8JX7i
         Bx95JQemlJqB+2bQHS9KBDt8VFe5Q428wuRRVSHeTdzA3S30pcfCFSy1kmYIEioEoB4B
         4QFXUM1sk82IIejz3CuMnVk849mRK21Oc12fVCDAFSb1V4Xc3Mf32AKvDj8n7AswNhPS
         5VQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YzlZXfwzt+3WaKKUyGo8l3oRaABy7D5x1WuTbUEkIgc=;
        b=Y5ulvbvvnyVCmQ6141+fe6QidXv6bLOuvTVB8rrwdrYdForaMbo8JQSlrBrEv67brv
         3D1omnWfNTwcvUUg3l0L6lVv3EQegJSY7v395Iv8Lj1KvIAa4Elgw4CyI1MP91ptnW43
         RL+nUcIeNPTS/shlPL2pSN9YusB+Xyc8EP98A9Lc3Y8wcPEL5fnZfiq3mcgOsU9jOY+r
         sl8kT6GVm5zyCNxgHyKPqypSwOQCp55E6A0SsU0HKnsUmrsi31x6llT2Ou6Atu4WPMg8
         0A2qYq4fD+3YEBviopLU52ct3qnf6Wn3OK1I5CFTfaQCH0/PijrTnYy/OMWIlK4epdtJ
         G7rA==
X-Gm-Message-State: AOAM531+9li7K+UAtREvdtFYIRXfNgsenVhxUyV583jpDYqqevD3zVm/
	WP6hDzOML/NOFxsR6UAemxM=
X-Google-Smtp-Source: ABdhPJyNCBY0LuC67/RuumnCng07xJlu7TcIxj2rNVBEwejho9ayNKUcI+IXB3hwqrL0fxGyhCCO6Q==
X-Received: by 2002:a05:620a:13c4:: with SMTP id g4mr11597681qkl.142.1598394360100;
        Tue, 25 Aug 2020 15:26:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:659:: with SMTP id a25ls72488qka.9.gmail; Tue, 25
 Aug 2020 15:25:59 -0700 (PDT)
X-Received: by 2002:a37:7ec4:: with SMTP id z187mr11538881qkc.204.1598394359737;
        Tue, 25 Aug 2020 15:25:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598394359; cv=none;
        d=google.com; s=arc-20160816;
        b=YBt1T6M4uM4iJAnhtVpxBAgy9Ub3ke96B30IhPcF6sygx/z/ngwDMeJWOst5nszxbH
         dbe6mOFaOfu3vd/Uxn4jgljtjD0nfUqv0sTfZce63JKEd5rPghFSPyiDRfkCGDPdMRJd
         NAYeHb/NBEvap0VGpUs3W4EDUiH6ts8ouUcbQLHpRtLx9tBcVJPx4lRq50ol5rBp048H
         /wFr59SPMbTU45k4EA/r0g6FxEq7T0V20IJvdt548ADYl2rqmcisiXDCHvCHcawQek/t
         r+HN75fr6hdiaq7KKrTXweZaByj7cb/HMs43dz8sgRKF5j4NTW6UatGaEI1duXePFhWC
         usGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=FW2LrTzzEQgbMzq3tJHO9RKBRPjxertl4+WTZokfJYo=;
        b=Z1mExet77R5K3LGh8R2IgsL1Z5mgq+qtGP0F19KGhpdNLWwF1fWB6RdKkAfF+SUFR4
         K2kYm/EhMxg+pKZr4xVPstXDBc2hLh0lwmfOQ06OTTFGnBtvJmR9ONDjXWGkyDK1+NAS
         cSxG6FwZGO2f5QSGoUhQ1FWPmbwuNQjZEZsePVITwmmREJGAXap7VkcybU/HTVbbzoPd
         9d1bL8as+xpZD2vKlNE6KZBwlHrb4gI5O3c4Ct1t5h5fE31sg2Cs5p1cx72qVRvS+7lG
         rdpK1LVtSBLpCp8ikFf2DQI5iDxFKgdh23AinN71GeH+hceozf/oqp/c5XNvqV4Ln4eC
         lP/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fOK1Krh7;
       spf=pass (google.com: domain of 3949fxwwkac4xnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3949FXwwKAC4XNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id b1si13443qto.3.2020.08.25.15.25.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 15:25:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3949fxwwkac4xnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id w16so58408qtt.8
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 15:25:59 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:1086:: with SMTP id
 o6mr11029155qvr.41.1598394359323; Tue, 25 Aug 2020 15:25:59 -0700 (PDT)
Date: Tue, 25 Aug 2020 15:25:51 -0700
Message-Id: <20200825222552.3113760-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH] Documentation: add minimum clang/llvm version
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>, 
	Randy Dunlap <rdunlap@infradead.org>, "Theodore Ts'o" <tytso@mit.edu>, Kees Cook <keescook@chromium.org>, 
	Will Deacon <will@kernel.org>, Borislav Petkov <bp@suse.de>, 
	"Alexander A. Klimov" <grandmaster@al2klimov.de>, clang-built-linux@googlegroups.com, 
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fOK1Krh7;       spf=pass
 (google.com: domain of 3949fxwwkac4xnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3949FXwwKAC4XNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Based on a vote at the LLVM BoF at Plumbers 2020, we decided to start
small, supporting just one formal upstream release of LLVM for now.

We can probably widen the support window of supported versions over
time.  Also, note that LLVM's release process is different than GCC's.
GCC tends to have 1 major release per year while releasing minor updates
to the past 3 major versions.  LLVM tends to support one major release
and one minor release every six months.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Note to reviewers: working remote, I'm having trouble testing/verifying
that I have the RST links wired up correctly; I would appreciate it if
someone is able to `make htmldocs` and check
Documentation/output/process/changes.html properly links to
Documentation/output/kbuild/llvm.html.

 Documentation/kbuild/llvm.rst     |  2 ++
 Documentation/process/changes.rst | 10 ++++++++++
 2 files changed, 12 insertions(+)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index 2aac50b97921..70ec6e9a183b 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -1,3 +1,5 @@
+.. _kbuild_llvm:
+
 ==============================
 Building Linux with Clang/LLVM
 ==============================
diff --git a/Documentation/process/changes.rst b/Documentation/process/changes.rst
index ee741763a3fc..6c580ef9f2a3 100644
--- a/Documentation/process/changes.rst
+++ b/Documentation/process/changes.rst
@@ -30,6 +30,7 @@ you probably needn't concern yourself with pcmciautils.
         Program        Minimal version       Command to check the version
 ====================== ===============  ========================================
 GNU C                  4.9              gcc --version
+Clang/LLVM (optional)  10.0.1           clang --version
 GNU make               3.81             make --version
 binutils               2.23             ld -v
 flex                   2.5.35           flex --version
@@ -68,6 +69,15 @@ GCC
 The gcc version requirements may vary depending on the type of CPU in your
 computer.
 
+Clang/LLVM (optional)
+---------------------
+
+The latest formal release of clang and LLVM utils (according to
+`releases.llvm.org <https://releases.llvm.org>`_) are supported for building
+kernels. Older releases aren't gauranteed to work, and we may drop workarounds
+from the kernel that were used to support older versions. Please see additional
+docs on :ref:`Building Linux with Clang/LLVM <kbuild_llvm>`.
+
 Make
 ----
 
-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825222552.3113760-1-ndesaulniers%40google.com.
