Return-Path: <clang-built-linux+bncBDY3NC743AGBBUVOVLVAKGQED2ZBSEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D238487E
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 11:18:11 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id m4sf6290396ybp.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 02:18:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565169491; cv=pass;
        d=google.com; s=arc-20160816;
        b=M7+cZttjT3bV2peNpGnUiNKKKLe8tZ0IcOQrKlD0jGDu1+ZQbR7pPyQP7d9ao9Rc7c
         e7H1u5RRTK8GIjWYXUK6d+7gt+4Vh28bdZG7TrgGBX5UR58BR0Jn6henapLv8SSkg872
         kim6Ta1mX1Gz+55+aGlVVACbKU0JO2uVm2nmpN6ymSqtG24VuHc08VeuckL9w4+vfwN1
         d83PxAmmTgpfA1Og2UzXOhPCWbnSH36vAcLDxpmWrJFgjPvLlQ9bt0WQVmo41bhqOSmd
         bT1LTCElC0dc+KxUx2vWmcbmrstiViOCsMvFQWK60uQugGARrT0VLV7R3zi5/AciQ6cZ
         S7wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=m/ftLfnjUcMgJrdPAJPSikEflm1XuPI6kGP++nUjZLw=;
        b=uvmJMtlRktPWQkJDjfWUhBpWqt8JaP+EMcvKHneeFEwisxTW8b8Cjazb9yOtdL8a6c
         yf6mZxch/n4L3T2F+/wa4AmfXDRLqBG9yGBJzWIf1jeMnMWYHZoHN1yrtH6MQcqZhW43
         8Z45iB/W5KaL6XsER5XVSEPulpREeI/XlIzWBGbY8oGqgFOJBhkt0ws6vx4s0PX6Wi5y
         HAUWdS91JKf2VXCYRznQWsNGyTD/2fsse+SDUjhU8gQ/XHIRMhl1azMk0GyBh6x2f3EC
         HHgLpo/IDspl3xMG898eg3JU4DJ+t3vvOR1mP95Y9ox1pOneYTlJE+Nh3N6mzJIm7Gnv
         bJVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.224 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m/ftLfnjUcMgJrdPAJPSikEflm1XuPI6kGP++nUjZLw=;
        b=aplsWB8e2XoHvqUDJ8rAvbLTlSBLbWc7cspAhNuQjR3XWImb9GR2Vcd9ClMDEPwCZE
         tAGdMsN+krimJBgUrAVKVFinQuMNy1wCmWV7dixdpacMpxW8v9wP51E0OiEgqxPx1nmp
         t+10ZN+dUVeeMUs3/bgcm/7CkcUvrfSAQu2s8hqdV4hfq3LFOiC/PZs6s7IEC13yoc/y
         YNJgrWTKN9wo26Mqm/UjxoIglua3LDyW7siWkOaE4jAUZb2u3/o4Vj6D8SIlR4iELCNC
         ky7dpaiGCJhY/uQLI8XPCNKUmCSSriAJOnVaeBfLsW0z39+BUPQyCW92ZN8kRRnRrIXf
         CmJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m/ftLfnjUcMgJrdPAJPSikEflm1XuPI6kGP++nUjZLw=;
        b=WC64G2C1NgCyFE0BQ8SobNrdCkutqPplGJRG+Q4XOPjCCcMFRVOUn1a57lGd5uUfm3
         wsLFlPgLe28oBgCnqrZvJLEADuaxKTh8uag+GEsoGa6W8VPtGkCVkGbNvLuV4Z8GfE7K
         oh3S2ev8pYvrsI+CIpCrSbAry+XnGB5hjxNLIzU0ILT8cPvr3a4+tol0gE32SGSA8oak
         2SxeEe+iQ32o3t/Q/BAQLb73TvpSMAwCTHI8tdKpAVDJqInYtlApwirazpwkjm7xrBIw
         AZikwLXMTVeCU9isKlfe7r/nrMqVWD/UniijTOeCvNWBG5/LV2JhCNmzTKsc4CgRHYNV
         neQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV1IXi+/yI42BR5Fq87lOkeY79ROQQ1KodksoTTOdBqj6W9v5+k
	xOaM5e0fkE9eCI+rWulXofU=
X-Google-Smtp-Source: APXvYqyDv8sZ2Q8fmZ4stvSEUKS7lTNbO640TnE0ifP2/MI1atwk2a6xZZmTeaSZB0yqgv1eVm8NNw==
X-Received: by 2002:a25:a1e4:: with SMTP id a91mr5514767ybi.122.1565169490853;
        Wed, 07 Aug 2019 02:18:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dcd2:: with SMTP id y201ls11819542ybe.7.gmail; Wed, 07
 Aug 2019 02:18:10 -0700 (PDT)
X-Received: by 2002:a25:1442:: with SMTP id 63mr5719078ybu.22.1565169490582;
        Wed, 07 Aug 2019 02:18:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565169490; cv=none;
        d=google.com; s=arc-20160816;
        b=tYtRf0NA6dB0Zv1WTS85mmUzBMWVm9fcaXgHr/0nQwdCeKZyRyzOLgTxmaQs+SZQlT
         f9qFZUhH+Fq0W6FZ0Scl2syarq7Kxsu1iDsKh8wNl9l2G4AMPq8k4JTjCGGxxGwdUFCr
         9M7MIqKdBWz7sHxeGfwrpzShVxny4GXLmdYC4VKOOchyu7vF5go4ocElLlUt9io4YHmd
         zns56k6/85LyCLDWFL+cE9weL4Z/BRCbtQVYqSVxjm6dC7UWfx1WymUvMT+KhW3Lrwkf
         WlH4BI81lwRIyqvXXV4etV/YCs5dXZ7XhkRtV10h+lWDnGc1aulPKNM5+I4yck+vWdIY
         YsJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=uV+g0d2Ip2ZpisjaV2JySJ3rf6LQUR1/xmN04823r9U=;
        b=oGw3OYi1ZlOZwZdfuPOnKUX1GnDR7xlJpA6mOSVh0gmHnGwIC9pCAeA0sYVUbBjGpu
         jIP7CBpWmZHrwsb3SJW4OHYhC+0JryPvhyWDzZvcb6AFOhb5yM0MqsAjsssDUkGhoyPW
         j2ZJbQihTi/GrI3bp5SfkAW8tZyvrbt6Ky/00+0hzzdnbCCDKq62fbFlnhpTTHU1IFHE
         pObNX8nvMSz/CdTUWbb4IfcveSgkIlpC/BF8aM6+SHM/ntGpQVMgmUVpSdzgf/oE35Rw
         Er3q13g75NR+EH3qwMmcmVeAi3cJXTohWpySzzPVqwYCl+PYzx4ExTUT14nahf9wSBgl
         2PWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.224 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0224.hostedemail.com. [216.40.44.224])
        by gmr-mx.google.com with ESMTPS id x5si3066975ybn.2.2019.08.07.02.18.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 02:18:10 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.224 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.224;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id EFB30180A76DC;
	Wed,  7 Aug 2019 09:18:09 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:599:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3873:4321:5007:6742:7901:8603:9707:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12297:12438:12555:12740:12760:12895:12986:13069:13255:13311:13357:13439:14659:14721:21080:21627:30054:30055:30070:30080:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:24,LUA_SUMMARY:none
X-HE-Tag: joke88_46ef5e8f7f662
X-Filterd-Recvd-Size: 3395
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Wed,  7 Aug 2019 09:18:07 +0000 (UTC)
Message-ID: <e8054867214be2e12f1bbf2c21b62ac041b6cccb.camel@perches.com>
Subject: Re: [PATCH -next] iwlwifi: dbg: work around clang bug by marking
 debug strings static
From: Joe Perches <joe@perches.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: Johannes Berg <johannes@sipsolutions.net>, Michael Ellerman
 <mpe@ellerman.id.au>, Kalle Valo <kvalo@codeaurora.org>, Luca Coelho
 <luciano.coelho@intel.com>, Arnd Bergmann <arnd@arndb.de>, Emmanuel
 Grumbach <emmanuel.grumbach@intel.com>, Intel Linux Wireless
 <linuxwifi@intel.com>,  "David S. Miller" <davem@davemloft.net>, Shahar S
 Matityahu <shahar.s.matityahu@intel.com>, Sara Sharon
 <sara.sharon@intel.com>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org,  LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Wed, 07 Aug 2019 02:18:06 -0700
In-Reply-To: <20190807051516.GA117639@archlinux-threadripper>
References: <20190712001708.170259-1-ndesaulniers@google.com>
	 <874l31r88y.fsf@concordia.ellerman.id.au>
	 <3a2b6d4f9356d54ab8e83fbf25ba9c5f50181f0d.camel@sipsolutions.net>
	 <CAKwvOdmBeB1BezsGh=cK=U9m8goKzZnngDRzNM7B1voZfh8yWg@mail.gmail.com>
	 <20190807051516.GA117639@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.224 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Tue, 2019-08-06 at 22:15 -0700, Nathan Chancellor wrote:
> Just for everyone else (since I commented on our issue tracker), this is
> now fixed in Linus's tree as of commit  1f6607250331 ("iwlwifi: dbg_ini:
> fix compile time assert build errors").

I think this change is incomplete and suggest you add this
to remove the use of another const char * format.

---
 drivers/net/wireless/intel/iwlwifi/fw/dbg.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
index 4d81776f576d..6b15e2e8cd37 100644
--- a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
+++ b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
@@ -2593,20 +2593,20 @@ static void iwl_fw_dbg_update_regions(struct iwl_fw_runtime *fwrt,
 {
 	void *iter = (void *)tlv->region_config;
 	int i, size = le32_to_cpu(tlv->num_regions);
-	const char *err_st =
-		"WRT: ext=%d. Invalid region %s %d for apply point %d\n";
 
 	for (i = 0; i < size; i++) {
 		struct iwl_fw_ini_region_cfg *reg = iter, **active;
 		int id = le32_to_cpu(reg->region_id);
 		u32 type = le32_to_cpu(reg->region_type);
 
-		if (WARN(id >= ARRAY_SIZE(fwrt->dump.active_regs), err_st, ext,
-			 "id", id, pnt))
+		if (WARN(id >= ARRAY_SIZE(fwrt->dump.active_regs),
+			 "WRT: ext=%d. Invalid region id %d for apply point %d\n",
+			 ext, id, pnt))
 			break;
 
-		if (WARN(type == 0 || type >= IWL_FW_INI_REGION_NUM, err_st,
-			 ext, "type", type, pnt))
+		if (WARN(type == 0 || type >= IWL_FW_INI_REGION_NUM,
+			 "WRT: ext=%d. Invalid region type %d for apply point %d\n",
+			 ext, type, pnt))
 			break;
 
 		active = &fwrt->dump.active_regs[id];


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e8054867214be2e12f1bbf2c21b62ac041b6cccb.camel%40perches.com.
