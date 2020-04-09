Return-Path: <clang-built-linux+bncBDPPFIEASMFBBRGRXH2AKGQEA7PNPWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5101E1A2CC3
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Apr 2020 02:13:58 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id v198sf1549081oia.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Apr 2020 17:13:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586391237; cv=pass;
        d=google.com; s=arc-20160816;
        b=07qPQxerQ+hPajUQzWOsJNTZIuCAhwRUPecWJvRg/QCN2c1oUNCE82I2k3rSrVs2tw
         17Ylrncwz3oSlh/n5kb0uilBLlZBwxnpNO3izA3pzeENMFKMKWETSnuJ1EGEbAo8XNI0
         cKIucLkw22nvB9DS9Ic1Uv2Pw+EL4wwXuWEEJrzXSiNAvJH/YKKOZwE3z0lL/fz8y6cg
         xbbtAfnkEbH2SmJWxZmNP99t5Zwaev38XXv/db3ruahE/wYUCIi06pd1/ZVZSiUklwuz
         tr7A42VYzhmtOATr9PfKtu6FaFIFDtDaNWaABbQdwlUIiB/J39xmP6XSs0D1GbhyvM/j
         sTKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=IVtnpoK244pun0QMGNZh69FrGGKGsGkE5PT3ZSJ7hyI=;
        b=NYJ67gaOc+T8Zy2FslWZPJp6nrEnqAmI3zIvllaziGR22EZ0qpzHfFOBZf8ijoiIfB
         iV0p1Sr6Pere16roJw2Q2nw63fc5YqCoDd5ycutlxy66CY8oHddxQgmbZ118Ju6B37NF
         uoIg6FoO9ltGryNtpf3uJVO5pMxYrnGTCt8A0YYW08C4UOdgohUlzINxbI7mVDnWbCEB
         V1dCym5SyI4Se02b2sllnxkK4cgyVfwgQ8ASqwQQkH+QXKueHGPbC+ocPkfn+pqtQvyY
         cJ42mYBzs2Q/njx9GEz8V8YFuUh0JhBWbqb/eOBc4t84O6/cp+zsb2thHaqYHgetsNVc
         hLvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qrqLRtG/";
       spf=pass (google.com: domain of 3w2ioxgckecgw52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3w2iOXgcKEcgw52us56u22uzs.q20qzo1u-p8wz7-zw18Bu22uzsu52836.q20@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IVtnpoK244pun0QMGNZh69FrGGKGsGkE5PT3ZSJ7hyI=;
        b=LtCRAmtU+e0NfuhRC+TxZ7/jfT7B7oE/Zb+mgLbOAQPm15ymzqiTN3WCxbO+yXmB9n
         OZEjMQXi9++vx5LY7Gw4sPmGaCuPv13DpZRIcoNrtA0uISVMjUwWnxyngO0g2P+eQndh
         PD2Oy6aHYAyZWN00ZlUHs2vx3moeHNg+rwdoLkgZPf1XmX1rm8wC9K0W/Pl4zBFQ8mri
         D6yN8alr5PLHHQQyszdVrIrKVm17ACS/InmYiTrI3ys00/eIMQ0FMnTaLkRUIlMrkVAb
         r6+yKKhGTgTRMhXaffN0JmaX3BsL5QiTUe4HPPc/BRAi7qVMe9U/g3Ld1d3ZRXCIzmro
         HKHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IVtnpoK244pun0QMGNZh69FrGGKGsGkE5PT3ZSJ7hyI=;
        b=YPLBnoKUYk/KhkniXqBtD9EoeFEBxlbYdo1IJvdNBmWEDLR6AO1kMvLC9An8xctjOR
         AdHaHmoplMeooyShLCs9bYu8M7IdGb9wYsqaw1l/vnkpdwKLfYUaQ5pM1bkuK4609q4i
         oLffZzH46vfKiLgdElXJQ5awEkkN7eWU9UFYUqQWVKaDmqGmD++4UiPUFJm8YYyBQmbS
         Qhg0ZMGZt6mUd0rBqyOqbMr8+FMch2yvaqCfQY3c9NdNYR/Ph002pS4ShOgdTeldEIU7
         rYcjdb80VojahdnD7NVC7rOq1Lz7kxHTaTiPhieAB5Hn7XXUor+KgBihUp1vRqqPaxrQ
         lO2Q==
X-Gm-Message-State: AGi0PuYUJRR2B1sg1/oInUV+YlSeEgdtTL1i69FSNPmYURFUt8qgdvx4
	fd0TBimnGbBqNXHeJf+wcvI=
X-Google-Smtp-Source: APiQypKVsan7FVpdOP/6uV6CpwWapmsyN9N6xcEuF9PUhWW6mTYB1+n9kIi4tZMPofHjCOPupcMt9Q==
X-Received: by 2002:aca:5d04:: with SMTP id r4mr4352384oib.94.1586391237290;
        Wed, 08 Apr 2020 17:13:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d1c8:: with SMTP id a8ls908036oos.11.gmail; Wed, 08 Apr
 2020 17:13:56 -0700 (PDT)
X-Received: by 2002:a05:6820:346:: with SMTP id m6mr8070029ooe.22.1586391236620;
        Wed, 08 Apr 2020 17:13:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586391236; cv=none;
        d=google.com; s=arc-20160816;
        b=cGzeE70Sj3//COTbHzEDqiCk01pfKtpaCxZBBiEy6klh+ojka5EuZfuFCuq29LkRq+
         ADyJs8rfa0543jiWMNbUk66mheSBTUi0UrP60WXc3bfSMp1KDxh9MITO3CGr8+NXyvme
         2olGhJfzHHQ1U5d919y3UWfYnF5tzP5ybtrA2Yr/7tw25jKKmqUFNT2k9Vbtbu8TALF2
         6Us9T48agWFm+uLxV8uRHttfEj8Oc9lrDJvaFNHzkjlfWlKf765EN51RzLVrFh2WtcP/
         97l1ysj36+MZa4SeaUNqb4URcMcc8KTZy58dska2Qq96UfHwxjT2O+zwUh7GT/QhknjT
         fCUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=fLv9na09IyKKayz49eZdHcsdFlK4tyhNPMNHoFdhlbI=;
        b=HqNX998Oad5qCbFDRvK4/wzMX+dcQL586yT7ksWZ1HIojVhyOE3uPalAXqOjCIrosp
         UVa4I1NOo7cu2anAES/oA5U7bIKhkKbY72xROYVQjdrIdNdcPvez0vdCZluUAG9wqAWh
         B3pMIfbwqFaW5HE1cNU97IOT5VYJC6i86VnUviGj3jXUYxF9kejkgrlG60FVnl1fr3jJ
         fxL2s1cxGS2FFCsm+AqVJE24qfxN7JbBdDche3yC90tj0RKqnzkFjjQ3DpoTwyPW7+du
         85fB/p3oUKGv54uB043pYD/vyTrmn+Hgb60mMC/ML83NBNF6Nta9i+uplC1OoLR83qeQ
         TaNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qrqLRtG/";
       spf=pass (google.com: domain of 3w2ioxgckecgw52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3w2iOXgcKEcgw52us56u22uzs.q20qzo1u-p8wz7-zw18Bu22uzsu52836.q20@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id q18si58023otg.4.2020.04.08.17.13.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Apr 2020 17:13:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3w2ioxgckecgw52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id np18so1148465pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 08 Apr 2020 17:13:56 -0700 (PDT)
X-Received: by 2002:a63:8343:: with SMTP id h64mr9089812pge.73.1586391235833;
 Wed, 08 Apr 2020 17:13:55 -0700 (PDT)
Date: Wed,  8 Apr 2020 17:13:52 -0700
Message-Id: <20200409001352.225135-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH] clang-format: don't indent namespaces
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="qrqLRtG/";       spf=pass
 (google.com: domain of 3w2ioxgckecgw52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3w2iOXgcKEcgw52us56u22uzs.q20qzo1u-p8wz7-zw18Bu22uzsu52836.q20@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

This change doesn't affect existing code. Inner namespace indentation
can lead to a lot of indentation in the case of anonymous namespaces and
the like, impeding readability. Of the clang-format builtin styles
LLVM, Google, Chromium and Mozilla use None while WebKit uses Inner.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 .clang-format | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/.clang-format b/.clang-format
index 6ec5558b516b..2d7754a4b6d8 100644
--- a/.clang-format
+++ b/.clang-format
@@ -482,7 +482,7 @@ KeepEmptyLinesAtTheStartOfBlocks: false
 MacroBlockBegin: ''
 MacroBlockEnd: ''
 MaxEmptyLinesToKeep: 1
-NamespaceIndentation: Inner
+NamespaceIndentation: None
 #ObjCBinPackProtocolList: Auto # Unknown to clang-format-5.0
 ObjCBlockIndentWidth: 8
 ObjCSpaceAfterProperty: true
-- 
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200409001352.225135-1-irogers%40google.com.
