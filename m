Return-Path: <clang-built-linux+bncBC27X66SWQMBBIFW475QKGQEOAESOSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB90282B36
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 16:24:33 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id k18sf125828vsm.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 07:24:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601821472; cv=pass;
        d=google.com; s=arc-20160816;
        b=C032BzpaWceqLpTcNulYrzpodAsVw+DRc1px7r6kerfgS12Jz5VQzMIM4DcSZ/k4MJ
         3udiU8kf7uPo73UwgJiLBheV3knIffrCqN27eU72VPjs+2kB3KjOfzlyDxsQ/RX2kRgf
         TyLXxci6trqANEVh8h5vhnjpjQsIcDUXIZKgHoKx1wX7CMnX+9FWaIcbQBXzG4TqevPh
         9/4fEiOGBQFcnyhvis86cj1bhc3nj2wmh0AsIEVoiaZKH9aC8Q9EKbE/aQgTi4ipD52r
         QG06A6j7U7i2vgmKR/5zBUT4/wsUJcAIO9UVsrUFBAV8b6xWJpzEjLJQs4dFh+0YGBNB
         kbrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=fjbo4jUkepCtzbFo+Y7xcbzWSaj+uQm2WExPmNnslH4=;
        b=JKix4OkaOkW1QEZL/E37TGgVaWvHP3y0Ld9TXAoFDgEFZWeForz8hBEIagVH0WD/ep
         Qiy5TntexHUaPZ/+va8IDQLJWcquEEt2RVE/t1I5WXBGvfBH8vYjW8zpSMb2kCvVnMj/
         MaLi1ksGmDnQ9xuTIkL88Xv6xSJcj+OIixSbzfeAugqnOkE0w3swpFN02eQaCBwZuR3w
         vY+UmTUcZuWmnBIWU99YBXP1upij005nzdptw1qL7LH7cfnNBYYjp04wFJOeLU4FtsTQ
         BkX/BM1leETQx3dv4gfYN62RC76bdo9pAdpXudR1ZmMe8eIHynNgB0IXN00VeU48qtxm
         q9GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IA6xWNby;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fjbo4jUkepCtzbFo+Y7xcbzWSaj+uQm2WExPmNnslH4=;
        b=lYJbxNe1LXThp86Uhnsq3Nc8QL7+x8xGwnAy3Ws8SBU40qWwGt/8bxvSPf1IM80Nlw
         413dFQbQPOfStfreJkt6emBfk467aFCU8tUXt0VJGlHvvk0NfK94vHSqppLCo4GBR8tm
         aUfEELA+QC0eu4mrgVDUxxcv014x3OxZYnrB68KeLz5BOT2FNJxZJmDVaNaP5/48r2wN
         KjGd++Abb7THiV0BREwXdDO4s9oI+W4sOYAii+NVW9rL2vou3+XB4On68bWOUi694L42
         mPquoRnKrgFSpbat+sQhmyS6eRFMlwx7qdsOv9w2xS75Jp23otlbDTgO0SLz+pwo9DnU
         +idA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fjbo4jUkepCtzbFo+Y7xcbzWSaj+uQm2WExPmNnslH4=;
        b=H4orRAwI8xguZ96Xkmh4IUCCiP6LC1vXFdss3/FRCb/wGmSlKdJ6YyTZ57HN2kYuXG
         8Eu7bzo/qS0sl0nnYpsj42WcYSAHGOge1Hhcy5w1fK7/S12mmH0/hnmyseTaZwlt41cM
         1Dby6E/vMVuLI6SiC/+ncUP9PuWlB9H4IKJhFEvixRhOmdO+uB5D43YubbhwmrU9FXJ2
         +FnTN2+DpB/ZdRynmfGq2QZyl8iuK2kd07BFRqEUfa8Jdlles8K2Q5w6IRDJ+bylGYl4
         Tx3Q8WtdvlRX5EmlFtiTaTckUPUmZ6tO/SZ0KxjO2bKe8OojotADXnlFPAI/+y5BenS7
         cvVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SiswAaJx/UHHod6pDsPtDukEAUX7XFXa6sNYqIYTZ/CQIG1oa
	PLRULTK5WI9jsJJH2RaYDZ0=
X-Google-Smtp-Source: ABdhPJy7pc+IK1aJLR0Fs+wPWMTdDd/V/gvmBDa+seIWQfW2rI+GOwIHiyJC3zuifXL5meYduFegbw==
X-Received: by 2002:a67:f3cb:: with SMTP id j11mr942280vsn.60.1601821472646;
        Sun, 04 Oct 2020 07:24:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:16c9:: with SMTP id g9ls434003uaf.6.gmail; Sun, 04 Oct
 2020 07:24:32 -0700 (PDT)
X-Received: by 2002:ab0:3418:: with SMTP id z24mr4768575uap.78.1601821472122;
        Sun, 04 Oct 2020 07:24:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601821472; cv=none;
        d=google.com; s=arc-20160816;
        b=wufvdPZZULpeJcM3bdkMo1rOsfM5W1iGckdy8RyZGYtNsPYrI/aMFtAaEJOxKKr77O
         U+KS1m4TeQapM3FlQaeaZIVgTla/Oqx6UpORB5Yd3Lyy5r2ChQXrgVYYUGMVVoZjsaIq
         bv9HY+dZbT43/8MzerV8vmRUyWuCjW5w8TWxVExAoiaVDB3SKoZxvtcx3nz86oGJSzCl
         3aDE3zc4gjZyAK20aKHc9vcBywGt9Syl2pJDX8kpe+WaakyAXfSgj+4/yt4o7Zcc/TMp
         rJpgFE1L0/fYVh3UmlxbOGzMHO99xDnyH4c6Nt8xfcegGJq+qX21eZ9iK+dLVus9Clij
         VoOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ImS+DzrKsQVbgZPvAgl58XuPNm8KTHvfc5J8ftfxKXw=;
        b=SulhRxTZYwWa+qm/bklHrGsIyFvV6h5/mYGarOA1z5QjiwwW61ITCy5tFXk9EJll1e
         jHRb/RW71AixF3v2TD9qT6LvW/M4KZpbQDpj9kkx6e5wfh1HyZDmrlxN04CRM8fTyB8+
         tf5aS/RiX/+eycBLtPOcHsTWgDQ+SstJY2qz3wiMJTjLauUsoY9M74eyZP4djTUVJWrA
         0FQKCS4obfapYTWCOcvVvF46Ko+CSPINFeHGGUfn2rAJHLqU0faQ5eOok0vRQqUodc4Q
         0F+lhayKX0wNmFjtxW/0Hc82vnCxAAJbjf6bokIV/gsdOAP7jyooi10tBz409B0JNpKm
         ob+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IA6xWNby;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y65si374260vkf.1.2020.10.04.07.24.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2020 07:24:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-433-0iJKgh3nNYOi2Cab0SV71A-1; Sun, 04 Oct 2020 10:24:30 -0400
X-MC-Unique: 0iJKgh3nNYOi2Cab0SV71A-1
Received: by mail-qv1-f69.google.com with SMTP id di5so4137428qvb.13
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 07:24:30 -0700 (PDT)
X-Received: by 2002:a05:620a:10a7:: with SMTP id h7mr2850458qkk.40.1601821469669;
        Sun, 04 Oct 2020 07:24:29 -0700 (PDT)
X-Received: by 2002:a05:620a:10a7:: with SMTP id h7mr2850439qkk.40.1601821469386;
        Sun, 04 Oct 2020 07:24:29 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id g12sm5292344qke.90.2020.10.04.07.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 07:24:28 -0700 (PDT)
From: trix@redhat.com
To: john.johansen@canonical.com,
	jmorris@namei.org,
	serge@hallyn.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] apparmor: fix error check
Date: Sun,  4 Oct 2020 07:24:22 -0700
Message-Id: <20201004142422.5717-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=IA6xWNby;
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

clang static analysis reports this representative problem:

label.c:1463:16: warning: Assigned value is garbage or undefined
        label->hname = name;
                     ^ ~~~~

In aa_update_label_name(), this the problem block of code

	if (aa_label_acntsxprint(&name, ...) == -1)
		return res;

On failure, aa_label_acntsxprint() has a more complicated return
that just -1.  So check for a negative return.

It was also noted that the aa_label_acntsxprint() main comment refers
to a nonexistent parameter, so clean up the comment.

Fixes: f1bd904175e8 ("apparmor: add the base fns() for domain labels")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 security/apparmor/label.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/security/apparmor/label.c b/security/apparmor/label.c
index e68bcedca976..6222fdfebe4e 100644
--- a/security/apparmor/label.c
+++ b/security/apparmor/label.c
@@ -1454,7 +1454,7 @@ bool aa_update_label_name(struct aa_ns *ns, struct aa_label *label, gfp_t gfp)
 	if (label->hname || labels_ns(label) != ns)
 		return res;
 
-	if (aa_label_acntsxprint(&name, ns, label, FLAGS_NONE, gfp) == -1)
+	if (aa_label_acntsxprint(&name, ns, label, FLAGS_NONE, gfp) < 0)
 		return res;
 
 	ls = labels_set(label);
@@ -1704,7 +1704,7 @@ int aa_label_asxprint(char **strp, struct aa_ns *ns, struct aa_label *label,
 
 /**
  * aa_label_acntsxprint - allocate a __counted string buffer and print label
- * @strp: buffer to write to. (MAY BE NULL if @size == 0)
+ * @strp: buffer to write to.
  * @ns: namespace profile is being viewed from
  * @label: label to view (NOT NULL)
  * @flags: flags controlling what label info is printed
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201004142422.5717-1-trix%40redhat.com.
