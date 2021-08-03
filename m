Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBBOYUSEAMGQEQQBG3GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 708213DEC81
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 13:44:06 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id e11-20020a05620a208bb02903b854c43335sf15838396qka.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 04:44:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627991045; cv=pass;
        d=google.com; s=arc-20160816;
        b=W6JcX6v4GQ4odbqoYBOF8HX0vDlpWhrZ71XyIJBIS4wVyojK1rhGbKjusGA3XiK9mj
         lS62X57qzr2dOBmdBcsU1nfckDRVJqS0EHOT7ddt42SU9a8Va+CaDRDKIb3ggmRfRiQq
         K75gX3vjzuOfiXjCHROzGNqDiaMd479tc2d3qZFV1muQN/zZNJDJ6r6sX6i3wLymFWt4
         3HVSvSKrWKQV2JHQFP6iyrrDzONDGMFffnMgcHrDftEy6i52p86ryRtgCwkJTK/IxixQ
         DNjvG3weKhV1CsOSo0WeTlk37l3phynqMG3lMAX1poF+rDKcCm73tf5+WZNSzDTEKCpe
         pIoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9MIRSo8UAbVXO/LLEgV5Wk6TZ6+g2TenWkcHYsTP0Zo=;
        b=vlZCbKIczTU0GoihqoWDChoGGJ84O71RYJqk6K0dnMh4+N/ngRSxUOZKeRJhxVRaTI
         xosHfh1Rsk+7V5nQBRArexYI+wqd3FFJuT/PIvOsoal+SWOzPWbw2MeSV34KOXywH0Yt
         dt21P9PgRt/ZyV1El5TKv27+saoYSvtOBpHvm0AwBTgUSwSYsRV1vCGNopx6Ai74gJ5l
         +2cFRggEqqkanzZTzk3YOJJnaQLnsaMJtOW9KR721nIiBHbCFAJ1k5ZJ/pNYFy7xzC51
         cB4Mf7YVlINsF0scoWEXJ6mCM5qg7D8qJABxjfXOFMct/iEbKSkshTWZD07mRCg+9OMP
         0vnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="bxOj/7iB";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9MIRSo8UAbVXO/LLEgV5Wk6TZ6+g2TenWkcHYsTP0Zo=;
        b=OfHiOSaLDAIZXb+Q32R4DoBoIA6VsXQDPGiEpICZaM3HAzRROB39l8HWozT2xbJUDH
         vjmXsyd9hbDlHZnACLYSktgiJlfNCeTLJJR0ev5OKxYnELn4iEVZz9t8xfxmri4GmPCG
         nO9aJj2TUQvquVwO418fEH8uApxeSMkWrrjIIxjUhdKza9wSAhENVLfHuKDF/Bs8xe3i
         aI+0sQQAi1K4ezDizs6cU3Abod+5CK51DoklnLWSam5r/i2W0a/PnQIdMn9HqLNxaWTs
         s3Cjobgeq5yklm3LwNpzA0NVJ2rVAAjVUPDjj2VnehtMWjSEhM0Ey9tKGZzuEy33x4Lf
         aNPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9MIRSo8UAbVXO/LLEgV5Wk6TZ6+g2TenWkcHYsTP0Zo=;
        b=DMh4fg5rOxlAKeJhsxSjBCochP0nV4wGMmL4JDKKLo7vow6RkRcdwj2q8eNebTKx4Q
         F5TYVANCTlWXbvPsKRk1urQcPVLfyWFztx1bfpFWNQ+YD6ynfXsf8Zk641cyVKFoEulE
         vG8mERqQ+bdbYPru64GrquXRCgUsWy8FAjvnlhUT+E+v5Rwsq+vePmt3QnNOI0mpL6jz
         HAtnVwoqfnZ1OLQaL2TaSxrVm5G+uo2DadTXdbfVhV0MEmR05F+z5S+qAXXEVT0n12V4
         rBjRSf6FwwMz/fe63gEc6tVzBRkeW9zaaAvj9wktS3EPGFhrMN7O6dOMppLICANkQrKs
         3VyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ADst49TVpB8T/iVlK50OcMj8tN4pijYnRY6ID/lazbMSJVB+T
	nkwbUnPtgWNZWVsx22Z6haY=
X-Google-Smtp-Source: ABdhPJw3aFJMa2vBEnsO2IVY5HzZBqY/7uzw4V2pSM7o8IkavbUu1lW2fEpc7l2BdddkL/fgh8VqZg==
X-Received: by 2002:a05:620a:1001:: with SMTP id z1mr19897156qkj.204.1627991045270;
        Tue, 03 Aug 2021 04:44:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4cc8:: with SMTP id l8ls8260521qtv.5.gmail; Tue, 03 Aug
 2021 04:44:04 -0700 (PDT)
X-Received: by 2002:a05:622a:283:: with SMTP id z3mr17993553qtw.312.1627991044799;
        Tue, 03 Aug 2021 04:44:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627991044; cv=none;
        d=google.com; s=arc-20160816;
        b=I9jRVS2dwM78mph4A1SOD8Uepgl3tq0LsrKOJV9u38AAKis6Wwjco7m0VR3OaBDr6v
         IZ/fs0/IRcZoR6Ve8A9q234tYj24ij8IZOE5ZQrBAerDd6T4olo/vOv24yn/oJbFLApJ
         mC03Crk/eFEMYu9IQxmKPoBpSNezxNEQezpGnMSKVyYdFHc5adfycdn8xoZMZtkuCZfH
         wfYUM90WKQv73DL6N2wf5ALLethW75uybsKnfR0ZgR8j2wpgs1QAfwbudlPQHZ91ctUE
         GF81viToA+NTgQHBWtmAry/Jf4s0ULiS6cUvmejJQer1txWfRErM49j9ECcVNrFuH3Ie
         EewA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ObSRRXEtW6znPyufa4sh+d2ejrBIuoAc1UhYAhnHf6Y=;
        b=wJ/oxd7oKimJO1jtp8Wk+yGE7k/O78UQOK2uEMb7M8Ov3BrSe1K8Mw+BAGweaFeXZH
         g/K8WCWxFptb6gSG1yisdG5Wp5M4OR8pF6wv6wuqXuRdM8m9WOhppQZDY8mtii7g90ef
         yz83PDFl0NzltrpZLqrbx5uRnQEEOKu0NenH7RfPoM9vHnfBjMO89X6qj7oM4xYxBwTS
         Aqnk8a47ejF1UDiIbQOqn+L1YvM6NMlzSuPavy18Z3MY9SG4VT6/RC92o/xfNdRyWe/B
         N2DfLWwc3jM6lwIptzJZ/Sqh/ezmSyZzlV8NMKr+q3PB1YecFAtQg8rjnY0WlZk9mAg4
         A57A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="bxOj/7iB";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 12si668536qtp.2.2021.08.03.04.44.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 04:44:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CA1B360EE9;
	Tue,  3 Aug 2021 11:44:02 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.13 08/11] smb3: rc uninitialized in one fallocate path
Date: Tue,  3 Aug 2021 07:43:49 -0400
Message-Id: <20210803114352.2252544-8-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210803114352.2252544-1-sashal@kernel.org>
References: <20210803114352.2252544-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="bxOj/7iB";       spf=pass
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
index 398c941e3897..f77156187a0a 100644
--- a/fs/cifs/smb2ops.c
+++ b/fs/cifs/smb2ops.c
@@ -3613,7 +3613,8 @@ static int smb3_simple_fallocate_write_range(unsigned int xid,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803114352.2252544-8-sashal%40kernel.org.
