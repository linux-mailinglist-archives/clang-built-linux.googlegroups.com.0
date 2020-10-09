Return-Path: <clang-built-linux+bncBC27X66SWQMBBZH4QL6AKGQEPV6DL5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2701F289227
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 21:47:49 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id d9sf967398vsl.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 12:47:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602272868; cv=pass;
        d=google.com; s=arc-20160816;
        b=mO0ltfLgtqXz6dK8hpOVCjME/utqjPdBdSEzcAGYvKQk8slsFgblVGJk9E3K6yFKEF
         tQqghXSNZGwELuLsDWd9JWjccvUB9ucJQ7wJcXIW8ag0IrvcnzPbFHjuc1w+xruLqt1n
         ascPO1NrBVxfxjqcP1DLBPMQNpsSYNOEZL9M+KGFCvsT1pT7m9I5s03oSCtGCYSjPzMT
         93JcgkuT7vXcQID1a8dUQf65wAgyVjIyPY3xGTv0jD17GcngPOVRvnEqc/e+KtYo9QE9
         b17CMpS1xqPzqCUH5z8nk+2qfy31jNRoxH2mbE0WerPBzopw90w7CbczSGHTHlo+4HEx
         JIUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=7MY3Lu2mV5yxPVcJUUbxFBIpJQflxGmx5z4Tq5dvvuA=;
        b=zy3rAOD6IrQU/hJfeNY8qDtb4s87IOV6Am1FvK1OwXiFt4WsowtQXGFkvGsYUvAOlT
         Z1g2gRpJiVH9zYg4AaB3cE8TUl4/vrb6RBSFadsqQmAyEp6E6ikESOHlMywuf93v8NYe
         vDvnYSQjUDQDtW6fdkAGK4Y5xYvSnppEF+gq+IhtlLha/K2MRp4Is2gfDZq//0tRNo/9
         MKzeWkV0lmrrf1dzIMLX1/HQ/Go7QUsaPEANW5nuUkeCn+Dc1FfjD04YsoFotTyRacT9
         PhAWB8FZ5BotivTAR80TNDLqkACGUgWrOodBQAxaEhn2AqGqOUAf4tZ3hjAyoyUcyBHz
         jY8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UMF1lbhL;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7MY3Lu2mV5yxPVcJUUbxFBIpJQflxGmx5z4Tq5dvvuA=;
        b=gaOCWgll2uNbIiRLdApGh877Txgy5n+/YbcRV2TqWy36xJudJf8VkbKNkVs/p0ZwGe
         0V4/aJdTs8b7oR6d9mxTmOaT8X6Tsq3iYGsZKGdOLNn835Cm12lVQhgCkoQMxaiTFvDc
         oUC3YAwXY4sMb4fQqI0LKB0jwJhtRcqNcRZGQpn7xOBSmSUr7/9I9n1a0cYd3FR/o0JY
         St2ZTH9KF2LdAqWefAdE1byIylP2KPTxjGSGUryP4j+0D8sLLLZIFKl0eFMvgHl1ib/z
         RDLNwShO514JXKmMvxEdhKEAUugBExNjzQag7FeM6ptR5hkjonyx45nuo+CR3sNkIO68
         S63g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7MY3Lu2mV5yxPVcJUUbxFBIpJQflxGmx5z4Tq5dvvuA=;
        b=COKQw9WtWgQoEC0Gijmtysu39RDdGvEpepu/rOgdrQZg6mO8LWYTpwGDK+CGWb0ldB
         07wHv2kusBS6GSzFDkRk5xvvQ7fjditV8PhSVda4YWyElJ3mniYhr6h8u20cY7s4RX9x
         TVfuCr8780NSviovzsoBzVYiq90pfjaQMugTKU63J36So7TzihqbfXsgCSagqc+EEW7G
         uhFS+fw/42FfuOTjCQ6dsrC83vhfs/2S5TdfSKYzJa3RX5zgpGhzV3PsRbpSTjsR53Ic
         e16x1HmxeRAiqoq+xcrme394WWoP9j926PTK53mfTARz7dP2y/S/1sODBx8rC2wyRxbL
         swLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305Z8ha80Ajda/bZJH+kksQ/4JAkK0BluDWpkD0tKuW7gRYeWm3
	Bhl/OhWf2up3rzHsIaLLm08=
X-Google-Smtp-Source: ABdhPJxHNtHFw459U0AuukCw+SYw7FgvHniWeP9I4lUvF8S9F2x8W32x5oPKCaGQkfzRHGCDdEE0Ww==
X-Received: by 2002:a05:6102:2fa:: with SMTP id j26mr9739596vsj.40.1602272868210;
        Fri, 09 Oct 2020 12:47:48 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2442:: with SMTP id g2ls747507uan.8.gmail; Fri, 09 Oct
 2020 12:47:47 -0700 (PDT)
X-Received: by 2002:ab0:6298:: with SMTP id z24mr9873750uao.105.1602272867845;
        Fri, 09 Oct 2020 12:47:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602272867; cv=none;
        d=google.com; s=arc-20160816;
        b=luHAu2f49Rdsw8BMhUx6sPbq2ISYNEG/yqUlAE/3YZimmtmZgaMGQtkNfXq49m0+P/
         cpjI6WvqwjYMRiv4OvO5BRdKll6o/YbPBFWAk37p/6jaCRBULpsU6hE4raXpydDP4S8s
         XSpTF97MFYZ21z1tjkcGIXoSo5lu4c6uAMdr2hx835KkcFCBVFb9E9ALTpTFJ7qLBuEh
         l6qgMdn2XLPEQZ4093TeburuW+YjwS5fIl0cxhiQm70R3zmViesvHH8w7UdvkDq5TzzG
         nmLX6Fqj+f2tX5Xa4I9Z5avUcZ+axOn5BbZ2qmqQKirCgSSoXnxH2quQohMXPkE7oy27
         6kvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lgXKGmJY8FuTXCXdpAoSLX4NBWkvEFcm38oteYITDlM=;
        b=RfHLS55B0Z8OyfZs4EDj3sK/X8/w2qh1bErGIgeLmDsUGOw3N+z2YuOm/NcKptFnVG
         74G0VFR21r3H7oKUvlys1AAVPH/4jOpByuBxVD+dcqqRZeb+cRZIEuouz58zovIY73m7
         Y5farG2SGeE0lpHTmB4tYQ7GrbkWzkIHA1Iq6UYCFUmK9/7X2wzspL+iW2aLizpfg+E1
         61ltEoGsVepeV5B+lAHHkNEm6F9R9odvsm9WI4VNEqZG58BHAgacJ8BsHEsRPmywLRor
         94C9VLvWIw8yFhEdPUjZciqbOhFDa3wBi1HTFFcwiRalLoHvnqt65KrrOlgfTAEUJcqF
         cbIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UMF1lbhL;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id v18si226508uat.1.2020.10.09.12.47.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 12:47:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-153-LCq_zGDlMJKY8jBd4v4Rzg-1; Fri, 09 Oct 2020 15:47:44 -0400
X-MC-Unique: LCq_zGDlMJKY8jBd4v4Rzg-1
Received: by mail-oo1-f72.google.com with SMTP id h23so4464616oof.6
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 12:47:44 -0700 (PDT)
X-Received: by 2002:a4a:e08a:: with SMTP id w10mr10404064oos.18.1602272863906;
        Fri, 09 Oct 2020 12:47:43 -0700 (PDT)
X-Received: by 2002:a4a:e08a:: with SMTP id w10mr10404056oos.18.1602272863697;
        Fri, 09 Oct 2020 12:47:43 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id s20sm8164861oot.15.2020.10.09.12.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 12:47:43 -0700 (PDT)
From: trix@redhat.com
To: dave@stgolabs.net,
	paulmck@kernel.org,
	josh@joshtriplett.org,
	rostedt@goodmis.org,
	mathieu.desnoyers@efficios.com,
	jiangshanlai@gmail.com,
	joel@joelfernandes.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-kernel@vger.kernel.org,
	rcu@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] rcutorture: remove unneeded check
Date: Fri,  9 Oct 2020 12:47:36 -0700
Message-Id: <20201009194736.2364-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=UMF1lbhL;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis reports this problem:

rcutorture.c:1999:2: warning: Called function pointer
  is null (null dereference)
        cur_ops->sync(); /* Later readers see above write. */
        ^~~~~~~~~~~~~~~

This is a false positive triggered by an earlier, later ignored
NULL check of sync() op.  By inspection of the rcu_torture_ops,
the sync() op is never uninitialized.  So this earlier check is
not needed.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 kernel/rcu/rcutorture.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/rcu/rcutorture.c b/kernel/rcu/rcutorture.c
index beba9e7963c8..6efc03a1d623 100644
--- a/kernel/rcu/rcutorture.c
+++ b/kernel/rcu/rcutorture.c
@@ -1989,7 +1989,7 @@ static void rcu_torture_fwd_prog_nr(struct rcu_fwd *rfp,
 	unsigned long stopat;
 	static DEFINE_TORTURE_RANDOM(trs);
 
-	if  (cur_ops->call && cur_ops->sync && cur_ops->cb_barrier) {
+	if  (cur_ops->call && cur_ops->cb_barrier) {
 		init_rcu_head_on_stack(&fcs.rh);
 		selfpropcb = true;
 	}
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009194736.2364-1-trix%40redhat.com.
