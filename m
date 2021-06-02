Return-Path: <clang-built-linux+bncBC53FPW2UIOBBR5R3OCQMGQEA57ACKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5203A397DDA
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 03:03:04 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id b28-20020a056512061cb02902aeab39c9b6sf194082lfe.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 18:03:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622595784; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z9XIi4Qbx4TLi+dreF3zY9cG0o8MgIerg1qqFlROMYAUunPwFbgn+XO/yhNVQ8N9tB
         B5riawEMi/qKce1UMvQETZpE3QUquCxiFL+tCsoi0AbWpHd9bksDsw2RbdbJHicvbFRS
         RBOdY+6TPUhKeWCtcMyjjGJpIFgEqcfc0+3C7YHWVZ2iJzGwOkaqparTUOZCkY2x73Cb
         BzEyZooA1fLQ5y/jFErGwCdhhu4QW6Yt0CsPfn3VG6uFQVuAWEblmddSnz4rxzFsNRxo
         qQnGZPFqRBD5ds47+iuCVyUYQoST7huGh7Td6/+KKPTai7le7lJnHD5vsd4E33loh5QG
         IzQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=/dP0i25Z3cPRalr8YqnCKwcntX8mP4M8eP7VYsHkfI4=;
        b=aCntcsAXj2R0TC1jRJV+a8lm0xnLA1eOmfdmD9m7/KrnTnToud4qaqVugOyiLSqtNt
         zjxCo3u/PQIMgYHbr+kqsgS33TTyyZG/0dXyPWkTNM+AX/cRg2Qq9fClffmYM5TaTO7Q
         +wX6oQDRVFQkgdZNBb4wZErqxD9rddvnNx03R59Vy9kaLutojcKM8Q99uiT4aKsp6N6S
         UQkl/SHXvC66pzay5PtHpJd6UC+Dg2nJsMYc6XGBBsg4BDkOJI8G0gBEvn6Bskg+pYHy
         1zuA/RoYUqooWeHIRbCQU3Q/9gB3ZdR78YbWSzJUi4wgcJTQ77BpyRt3VQ2DQx5DUmCZ
         bVcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I5CZp/C/";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/dP0i25Z3cPRalr8YqnCKwcntX8mP4M8eP7VYsHkfI4=;
        b=RpvbL5qY7PxF5b+s4xRhXB3hrOe1uPtgdMjdmZ734gkSPbTYFTve5SKQEdSoAAE5Ny
         MmWzG2I7J3y66m2IqG5V92PycDipCdVfFUC7Sv3EQlkMVrW6cvnOoUavdrMf0e1FQEzT
         SdGbJjXmpVLId8VcTjWIhq2enkfCH6NkqAGL1I9XsZrQi0PVuBHCTRze5ePaQ/QpXA0y
         H8PsOXHO/NEeBoEUm9HkCG1dZEuHFifBjmgqoY7n5EKVmufAY69boWs0nEAMHncaGO35
         k67rSTHlrMhTP2N0Ccr72cxBPUvrf454I34O/116TrkknXc4XFD1eRKewqrbkbiKlsQe
         +TXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/dP0i25Z3cPRalr8YqnCKwcntX8mP4M8eP7VYsHkfI4=;
        b=FWKJ8ktg3woDPYbyx6M16mUnBnRu6XXxOK6j4exIEk51uchFV4owV6g1gc1eHbuJ0w
         AvM+48ao0VEbh22G6zWzlhWGpt5L4q9EepqNs3NQvEFRmXRqs+nW1Wf6Zz0aSuPqCbOB
         6Wwy7zbu1B6ikkKRlUXrGjorwc3nLFIdkP410+DIaulQLVgdL9cLVSVtgkTebnrGzHx8
         /gfkhyTvpykpCpp9p4G9uG84Bnogt2RUvSkLSQrEwSULnZovWpyqfJ2Ama62J5gHDTYL
         9dgL8ny/6uCdekqU50+sKvLaeS5vXPIAz5AIE9KAHa91aSCuTgsWagJyaTGVP77VHJo1
         21uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/dP0i25Z3cPRalr8YqnCKwcntX8mP4M8eP7VYsHkfI4=;
        b=jkLCj68WZ7sUXk79W3CZ0hCO21NCERmJ2O/e5jahU1diidPZlmhUnDOLxxMkOG1G74
         Dm1oYDA/yeRUpNTTcbU4AXq6PbRjM0kQNXyfpx6oJhtPz5SBvU808EFmtdoKodiidC+J
         JyeZ/KiGhakP7Y8/Wt13lv5xg8omZxSGF58kv17n6tLLd+K7iE7fGCbdc6a9UUbnxQpf
         aisp4wZxRGWXiqfiY1st+mEIohKlbNFtXrp4QVreL7RcbnYJy3C6vW4FlA8PEmneuBja
         XOwCtNAZKM+cSsw8laph6jf4VT+g1qSETA+6BGZZLoNmkI80/PqYRNk3vKFy4vDL1dGG
         ZOFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327/4aoj3Amz8XQ3SiMnuCRKL67KyJbmlv1J1ML9gyPEgx1of5l
	0afUUHOmk6gDe3Mca3uv94A=
X-Google-Smtp-Source: ABdhPJw47r4grH159kH7xKSYnpGFvoUYDD8fKWcw/ROa/Y36AHn/6ZvZWKNutI9rGdvXzYCBXd/Ocw==
X-Received: by 2002:a05:6512:3c86:: with SMTP id h6mr20539380lfv.366.1622595783894;
        Tue, 01 Jun 2021 18:03:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls1682407lfu.1.gmail; Tue,
 01 Jun 2021 18:03:02 -0700 (PDT)
X-Received: by 2002:a05:6512:2253:: with SMTP id i19mr20242112lfu.92.1622595782780;
        Tue, 01 Jun 2021 18:03:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622595782; cv=none;
        d=google.com; s=arc-20160816;
        b=Q2DHt3OM58DE3v86vfw+xcnPkan8waT/7ZvlmuuaHId23ZKOFl2H9KveG5p24z6bXN
         rBJjJBIVN5h8tvq401TNOTm8qEDF+vSTSb/e/fynocMRo8lPCPbbcrvTo55EWREFgGko
         FCiZAVT16XFtqggyYiD9B2NtXheHGVvDXsT8JpJjkmBeSgGqAnWCtiG9XsYpt21YTGgR
         mje1CBjDW/ZxhFyY7fftXo+BTdN1979Pv5IQIAxTMVQumgpaIEPX1Rj4mRrOG3RfmaDW
         tb62yMPtZomalpe/MVuUNPvxKQ8Jn4ufO9r8roy+XeBMW/NxvENASocTR0H9P40hoz01
         s85g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=J4lnPBDBr7sIl/dpoQJKyl1JI78Mt5N3SQMNWpb+V64=;
        b=OA909BoibHF67wcAy0eIArHZgonYeRnbHrNMtyOHj+E6kuAOnw8g5iyh9kUPXo62gT
         ofTXeITDqKCvvwOi1eWA5AwR+/s+DpmnadZz/bAjyrHEn74uDGVfNGSd5FhIO3upS9Cy
         y3d1fCyUHh7QTZkZrsdVKnomeLpNicbCc2xAoA50ch3DM4hEI0mRoGkGwAApuPJ3a6DM
         8/TF8beJ6xFB5sZVplVjzFF22g4VHMMzm4i9+0sIH8ucDPCcAxPZL1CfEQ1aof2I2Pof
         GXA6rheDkJlYlxWQgJMKU6tCxQyvfu1gOI9tIYAWLLdZWyRRQorlCwbkFnTgRrW49/3P
         +e3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I5CZp/C/";
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id k35si704128lfv.3.2021.06.01.18.03.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 18:03:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id o8so460603ljp.0
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 18:03:02 -0700 (PDT)
X-Received: by 2002:a05:651c:1251:: with SMTP id h17mr23984138ljh.215.1622595782635;
        Tue, 01 Jun 2021 18:03:02 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yb9bh06yk5jm2qt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:3d09:bda0:2327:559b])
        by smtp.gmail.com with ESMTPSA id d7sm1825403lfg.253.2021.06.01.18.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 18:03:02 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	morbo@google.com
Subject: [PATCH 1/1] pgo: Fix allocate_node() handling of non-vmlinux nodes.
Date: Wed,  2 Jun 2021 03:57:04 +0300
Message-Id: <20210602005702.9650-2-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210602005702.9650-1-jarmo.tiitto@gmail.com>
References: <20210602005702.9650-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="I5CZp/C/";       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e
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

Currently allocate_node() will reserve nodes even if *p
doesn't point into __llvm_prf_data_start - __llvm_prf_data_end
range.

Fix it by checking if p points into vmlinux range
and otherwise return NULL.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
 kernel/pgo/instrument.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
index 0e07ee1b17d9..9bca535dfa91 100644
--- a/kernel/pgo/instrument.c
+++ b/kernel/pgo/instrument.c
@@ -55,6 +55,10 @@ void prf_unlock(unsigned long flags)
 static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
 						 u32 index, u64 value)
 {
+	/* check if p points into vmlinux. If not, don't allocate. */
+	if (p < __llvm_prf_data_start || p >= __llvm_prf_data_end)
+		return NULL;
+
 	if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
 		return NULL; /* Out of nodes */
 
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210602005702.9650-2-jarmo.tiitto%40gmail.com.
