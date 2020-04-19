Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBTEL6H2AKGQE5PI7CSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E79E1AFA08
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 14:36:28 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id q25sf3946337ejz.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 05:36:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587299788; cv=pass;
        d=google.com; s=arc-20160816;
        b=VHG3x8qapXEuvt92tBpbUko0hynwxZwVJfYjBvV7CKt04eofyOikmOusk1O7zjG4aa
         d4mjxt7X9AfHUe8djQFQuS2IV0lUeFizTERgGNFNsEYa7ChK2znCH7Z7PRzxxLpJ7PFZ
         IGZCxsTkUPkTR83rHQhoOxYgB4rx3jMx7D5bePlgPlUE4ZNirkrCt3eYSmR4PCcDwh9i
         ZdWEV/BURDl53ibButgMiFwyxYEAfoxFZigb/6R2iYgcltaTO633vKwZUDBXAOlZ60EU
         ZqDZiWLKaZfwemYxYYqIdxb4MZaBr3JghDlY1PkCSwjWe6pG0gKGZkbnDwwQiXnTQOfI
         WV4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=OvqRhyvDDuuDOIvUvw+vz6IMUJOnqJg3QmGy0RJ4HAc=;
        b=XIk9P25TN2MsB8KZjOqMgFWHP16p95vKeq6C0Rr14BKn1JXQAqWCpdJJQkbl7KLjpt
         UsfdYkZ8Zx1SSZIOzgqAoTIQ+nHhLH5EiNM8PVVzqDO4toB57wO+eM3NENx4dKezcCjc
         j0kIb6WDFCsnek6zlFDJNJNlTSnNRbEdwClS1hlrCjUqP+eTWp6lR/hBjUNyHFGMNHdP
         yXpJUVYbGJMrUzf+w4FJPUpT8/Tn6MZ1XPpecNFiLdY8uihnNduXVjMBFhMKH4Mojgot
         sYtAKzOIpV5Pq8Gv7QfEoUYNee9J2u4Gc/9vUYNI7vUmE2xqTVYbP+TjGoR1u1O7Qg+d
         5m6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mPeLXDI7;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OvqRhyvDDuuDOIvUvw+vz6IMUJOnqJg3QmGy0RJ4HAc=;
        b=rNjfgfFVi1AtuzlmDvq3TaPwD1e3bqsavTE6u7bKQcycn4SyBdjFqrganXJUUPgDTW
         AtZX4CmcOjoBM7LT+PRswwX4V5+DtUnwQsMMqPuatHb0ZUz61KvQq1/tPJPiMu5BQhPp
         +gWxXG4ayYxPFFQvBbQHx/1LXVMqIHmCIBO4tYTiG9BvshB8HIXxtTL2Lxm74y/42aP2
         PHK0ClNeY+pgoR93Qu5soxtdujL5Cxc7qoxz859K0Nq41xce9u8DF3ncZDG4NFf0bZVR
         gsmq6IcUQkn0Eqz09yeU6e40rGEIIYa7z4Vx5FSZA2rSymz6YlcCjNCnT3iB3tuX3uDT
         S+AA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OvqRhyvDDuuDOIvUvw+vz6IMUJOnqJg3QmGy0RJ4HAc=;
        b=MBRWO1lZ2+gOUCykvpB2Cts+82lNn/BhS/ud0NTeka3tvPUSOuvq8vFpkDqodV1Ix5
         wG2mqTS6gnc5aDw7KHtsRQ7uaD/ZVrtlHq3C2du9Tgscj0t8k91UqAxsiMUqA0HX8kRh
         ZD4fLfMCvgcszjaNvM6JVw8typgO8TtPO3lsVgnmfBK60vKYjge+jDSfdi3u0dzU+dvN
         pszx7giiXXksW1sR0MmfmKUKwCR5ftlXsvTx01oN2PObcOURQpHValFY2rPo71dGOevC
         hdXq+uYzrRsZogttdfmwLGbZq272VeVGkkpnbrNb7zmrRDkUKHEfxosgLVE5THviQR02
         h0ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OvqRhyvDDuuDOIvUvw+vz6IMUJOnqJg3QmGy0RJ4HAc=;
        b=haF2mXk5MKllBljYVpo5m+NMjb0Wx1YzOktLn7GZKYp1emlenDTdBcReanfPIq9dRq
         jCjNBy02AXHRZmr99jjb1Bcs7gGlJ1H4l2uxHQvO223bKT857v7eF3Xq3hSnKBmqAEh6
         XYizZmaxdWzoZGV89MM8xv7KxVt0lzARrS5essCLZ1P8duUL8iDEDqPLmJfXUa8uQjZD
         A8wn9tEhS/apzf/xxn6nnr/T4RIWw+79hlPXZyCIfgTBIGkS4MqVqKfd9Fq+/22iVYTd
         PcXDUbWxG/Fpa1q15IYCy7ltdHRgLZEkitQWjbRJbKXI8u+W2O+f068o3orynQYKLrFb
         z0mw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubDy5dG+pHSf0EMLvv2bDHQxbl+s2TzQN3GR0Ma3Xw5V6gyoSfk
	2hOKT+9uoskO9elm/icSRsE=
X-Google-Smtp-Source: APiQypKEmEe5Ad2h2vjquWXnOWyLdxQEJNwW6/lC2sMvugZBeOsAp5XTYUbJAj+o9VExXCyznwRBjg==
X-Received: by 2002:a17:906:d1c4:: with SMTP id bs4mr11589685ejb.109.1587299788290;
        Sun, 19 Apr 2020 05:36:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:d9ca:: with SMTP id x10ls5525084edj.3.gmail; Sun, 19 Apr
 2020 05:36:27 -0700 (PDT)
X-Received: by 2002:a05:6402:1768:: with SMTP id da8mr10363228edb.216.1587299787679;
        Sun, 19 Apr 2020 05:36:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587299787; cv=none;
        d=google.com; s=arc-20160816;
        b=a4ImhMbmkdfbMNJxbmBHZB0Y4Y/iqq7vxOMpfuQxLQvko2QjuyGtHrRDKLs1K+oKBY
         tm/2f7dM47ogrPRGQFyhEDDOWAW5HhayuHxH/lO6/BRx+XuMEzwnW8/5ynvOzcxd6X6o
         t48YBvMsw5h1L0Il0qNvdYGojiilXWx9iiEspHCh5kagEqBM4tqDDnZZ3+Qu4pLAHosd
         57nfGpHmaIIMHIYbaaM/e5dkeBV4zW+gPXS0FxffFsXEqno8+biGvF3Txsdn5gQuEdrv
         MoNEn6AQaShWuR3PYXmSbmUxXyxgRWgGHrH5ZAJdi+SGNIzvD89bGDLmeW4ue78Pqnoa
         O3wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=NO2BQW6T1noQfECm0T8lcV7QErjlTf0XvFH0gH2fMyE=;
        b=NT7TIb59357GzoggocPlnFUdq1wwdk4H7dP20iNaAaYB9V2rUCn8rV2FbDiEWQHssN
         VVcxEytaa+YXFsvt/D4xOaKqaZ+RF1gFCMru7V1UHAUVC9JGqOvaadQTdKJsHSghHIdW
         F5R+ThaMDjO0ukLPxoHSjVuJRsHlUp0dFlVhG4e4Cb0CGsn5+GW3QJMxK22eIzsjPcHK
         rLWsIURgzAtbZfrsCgmrpa+67OOybJMvBx01LJDyQuBbTtK+BI/X7tWHK4VPofOGTb/0
         Anz/e2EDab8jLHitT3q8qO7c/3/bVjJdShqJ2OyQW3yx08P7NBUtPxY33qVCSeck/ovE
         zw5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mPeLXDI7;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id r26si475133edb.5.2020.04.19.05.36.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 05:36:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id x25so7776238wmc.0
        for <clang-built-linux@googlegroups.com>; Sun, 19 Apr 2020 05:36:27 -0700 (PDT)
X-Received: by 2002:a1c:7d04:: with SMTP id y4mr12492390wmc.10.1587299787388;
        Sun, 19 Apr 2020 05:36:27 -0700 (PDT)
Received: from localhost.localdomain (x59cc9bd1.dyn.telefonica.de. [89.204.155.209])
        by smtp.gmail.com with ESMTPSA id 68sm42508323wrm.65.2020.04.19.05.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 05:36:26 -0700 (PDT)
From: Sedat Dilek <sedat.dilek@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Jessica Yu <jeyu@kernel.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Dan Williams <dan.j.williams@intel.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Sedat Dilek <sedat.dilek@gmail.com>
Subject: [PATCH] kbuild: Set CLANG_VERSION only when Clang is used
Date: Sun, 19 Apr 2020 14:36:12 +0200
Message-Id: <20200419123612.173187-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mPeLXDI7;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

Do like GCC_VERSION is set when GCC (see CC_IS_GCC) is used.

Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
 init/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/init/Kconfig b/init/Kconfig
index 9e22ee8fbd75..c23f9d3d6d6c 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -25,7 +25,7 @@ config CC_IS_CLANG
 
 config CLANG_VERSION
 	int
-	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
+	default $(shell,$(srctree)/scripts/clang-version.sh $(CC)) if CC_IS_CLANG
 
 config CC_CAN_LINK
 	def_bool $(success,$(srctree)/scripts/cc-can-link.sh $(CC))
-- 
2.26.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419123612.173187-1-sedat.dilek%40gmail.com.
