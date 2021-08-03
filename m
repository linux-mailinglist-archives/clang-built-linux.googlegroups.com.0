Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBFGYUSEAMGQEC76TE7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C583DEC85
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 13:44:21 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id v21-20020a67af150000b02902baea699248sf2600793vsl.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 04:44:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627991060; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZkJrUTD83ENcGq66C9PtNaRFz3YVcXC+emtrwJUJJY7w/3wrjXEmKRwEiQy3LTCC+
         xjzzCVyLLO8ovFy0o1xM9T5jSPPfNNlqMYXwE7baftKlch+3jcNAlH8+qQgTa/MApFkm
         gIugznufAufbO9GVadGScXq07yjdp8BKLxG/kCtgkQ7R5AiItQnlT/u/1sC04t2P75uG
         2/b3YYJdtnV54fsXKSIlNXfPQHun/PohI2woARzLM+LsQLSnSapVYF/kQdhMS8fgEoha
         m1oY62GUrSgZ1ol66vAKyERFplgEPyLvL0SGZr9v6B3W5y6wW5NMAkLMuFKQlv1F2hEi
         GtHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=7NyEsTu2DbJ8/3jiF4gLeCefgL4bLIHmAEkeOVH5NYA=;
        b=YjcIcR8ibycp5wB3VEBOKJmu1D7q4cVcYReH37rOTNOqUaiWsQdGlya3HcKtYQVBXM
         fxsbB1imXONQ1AkyjYp5rfrXTBsroy4/9krrXnuRaUo7rSSacXfH9MrP0w0kNmarN2pH
         j46nEtDtuLzPmjPTEFexy9h4XpWO8qtW+BAvOBvqghYRIBIe9olEb164YYGBIh/7s8c3
         z2hZj3gks+uw2aNQWEPXEytU/qJvf+2zO337YQXDxRtkRTmn6XKEWCHPgJ1tYgyQsgQN
         tj7wBuPymYF+Vcb0SK+13gUjeNLo2ZLILKellMUCOsB5KRrsCi790JdJtnCZoHVscqy/
         sdXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iSepgHdA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7NyEsTu2DbJ8/3jiF4gLeCefgL4bLIHmAEkeOVH5NYA=;
        b=GyA+f/srj5Bo6K+NILtKWqWBEb2EtStyWg8ZL5gikWp6t3h2xNFx/kyuED9Gysp2fn
         VXvWRhboAP48fIrD3rlBBlY0EIHi7WTKoLhp8q6ftbnw3orV4XMfkfAeQicpmqrDawL3
         PlQE4zjD3SxDga4JFzDlSt1AYh2XcGEkgfpBSFVdjPdye7qRxuaHvT2AymAX6kKL/oeo
         N17aLSbKD7IPHOWd9psxKAAWzq3A08lnSMiP6CMOxi/ctNlvGA2vBv6JkjwFLK6q7eVm
         umfnzFvolWFUj1jdf9iAD5FCL3wx09rCgDwHQ5ieAZZfQaFRMUMbGiFCztQ5dcg36TTI
         shPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7NyEsTu2DbJ8/3jiF4gLeCefgL4bLIHmAEkeOVH5NYA=;
        b=h87oqHh+NTdFnzlGYz1WoOFWLpWOdtaiMs9We4NM4UttVmsKF3wQ+pkOTzrxLpkx7K
         vG7LMKqyyVk8hTBdhOVywQak+in7f2vcqbrl9TzTcdpp7UpWAAMRzS6p5CeUFQdtAfz0
         qyKTxO9CIRyaeChEmxzLQpXCiMwQmtT0WYxsbGgGr1iNrmqQFmhMdT6jD1my3CoIRGo8
         NKG12JQyned8ZD2AHi7n85xnsZOHeUU3UwnFdkKu0J87bNoHUUn9uUwpQpJ9A3tSj4gu
         TZgNVE1SZGtS7osbrAMZi0TtsjYIn9cUD0MV0e7wBPi16OMcqeFp9XNYv5JYrucLgROW
         ri2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531P0aZkhD5ALmCVtnIRVctzDd3eLxIJ9lxnE87InIto0kcKSTD+
	OS0iG9nXwGee2co2+G2fOOw=
X-Google-Smtp-Source: ABdhPJyN3fVQEG9ZaHfpCX4Q0J1bdo1IEnYF0XMQfHSHxXAhvfJZizWCIY25X0YXy2S8/dl1SUN6lQ==
X-Received: by 2002:a05:6102:125b:: with SMTP id p27mr12935309vsg.11.1627991060767;
        Tue, 03 Aug 2021 04:44:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:db06:: with SMTP id s6ls985539vkg.2.gmail; Tue, 03 Aug
 2021 04:44:20 -0700 (PDT)
X-Received: by 2002:a1f:3696:: with SMTP id d144mr11569674vka.12.1627991060143;
        Tue, 03 Aug 2021 04:44:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627991060; cv=none;
        d=google.com; s=arc-20160816;
        b=zcjW7R3Qex0QYDbm1nOe9LcyO53OP5P4siCM7Ky1F9TT80QgDjofWfIHrQA7fcgfWF
         dJ8eYDbPrSLI4KUlIZTn7rq3nbu6Vy2HKVIOBK1pCq1FwOmjCphss/xmrTUgcQJL/RNG
         cYxnWhpHIgbKWXrNs7GtAYRnChok413SZF0krEnAst0wkgemdI92LAXSYpANrjblPOyJ
         5Xv8wuX+b8JcttIVZHPStSuinMyx8E3y49o36/LWO58bcml7yWuA9EyFAFHC5gUGP3en
         zgdN/u2o+LTrKEhiukIqt2EEowSAtNhGJmRZDbSK1/JVIFE30lu4kD1ZiA7+Ghdp1aTg
         gjxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=v+CIY0OrX6zktH27bWPrRODNlPAfdNCMSD+wGWkLHUY=;
        b=fezhDwtdGJYPLw5PXYm0t0mu24B5a0WqEQ2mGjvHf9NlwP0V64vuVkapufK7VVXlsB
         3S6+xiodWGqpeK1zr6P0xyVanMshZ7MP4GdeP2guVJziuA615Ve3NPP12vMY9zyi0MJC
         Tw7+giDkrvWthXuJSOI+08DxEuVt3MJv2r2LA/7IujM2nN0RTR9vpm/dh1Z64mUdDoyK
         dYkn9grKs0D2EiQrHtVZ4bVDSIai1yOzfUq8CbLTbn5yiN+1+Z/ewwVnnD1+mPoRJReK
         09kYTVtIyCk4dH/9lvxe2OQTgoLOMKylufK/YcChnQLVMuQMQbAD03UtEP9Oa34prOQX
         ozvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iSepgHdA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n18si964611vsk.2.2021.08.03.04.44.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 04:44:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3560460F11;
	Tue,  3 Aug 2021 11:44:18 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Steve French <stfrench@microsoft.com>,
	kernel test robot <lkp@intel.com>,
	Paulo Alcantara <pc@cjr.nz>,
	Sasha Levin <sashal@kernel.org>,
	linux-cifs@vger.kernel.org,
	samba-technical@lists.samba.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 8/9] smb3: rc uninitialized in one fallocate path
Date: Tue,  3 Aug 2021 07:44:07 -0400
Message-Id: <20210803114408.2252713-8-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210803114408.2252713-1-sashal@kernel.org>
References: <20210803114408.2252713-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iSepgHdA;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Steve French <stfrench@microsoft.com>

[ Upstream commit 5ad4df56cd2158965f73416d41fce37906724822 ]

Clang detected a problem with rc possibly being unitialized
(when length is zero) in a recently added fallocate code path.

Reported-by: kernel test robot <lkp@intel.com>
Reviewed-by: Paulo Alcantara (SUSE) <pc@cjr.nz>
Signed-off-by: Steve French <stfrench@microsoft.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/cifs/smb2ops.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/cifs/smb2ops.c b/fs/cifs/smb2ops.c
index 81e087723777..fdb1d660bd13 100644
--- a/fs/cifs/smb2ops.c
+++ b/fs/cifs/smb2ops.c
@@ -3466,7 +3466,8 @@ static int smb3_simple_fallocate_write_range(unsigned int xid,
 					     char *buf)
 {
 	struct cifs_io_parms io_parms = {0};
-	int rc, nbytes;
+	int nbytes;
+	int rc = 0;
 	struct kvec iov[2];
 
 	io_parms.netfid = cfile->fid.netfid;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803114408.2252713-8-sashal%40kernel.org.
