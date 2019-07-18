Return-Path: <clang-built-linux+bncBDY3NC743AGBBUU4YLUQKGQEHN66TVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id BB91A6D0F0
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 17:20:51 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id 91sf14056932pla.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 08:20:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563463250; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zus112EuhcXBjlysJ1hxvaRujID358p5i5DwZpSs6G0PUy4zf5KU0P06ZGwurktIos
         KGraK1vcJJQ/ULBC51W8tMIqDVsdSaTi2NGLoFvvRHRgVylrnn7McpMesi78lcEMWScB
         ozKICmAw0AFG72KgYqzfm/gGCo5V3FFIqFPbRZC6hEf3V5BSMQFaL6KpXNtKY393h9MG
         P6HD1MmVjwd9Dm+7FSMlbn6RG+MoRQ9aTaoG07Igo8qgHw/1xPlM8I+NE9siSmpzNYib
         RB13c2j7a7Na2P0Q/Prxe7Xr4yI4WspDXTZFKj+dewa4kziKdKF0ZTIRCsyAT+UaPDN0
         OlkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=ZCwMPTFUweyazyZ9fpMnb6RGCjQhnUGs7TO90j2n37Q=;
        b=j0wAKOlnBWyJFkDXZ56Pl/nWRCvoG4+4wTvTT84e6QVLtDrgwFn4bAF5orgEi3Qcop
         1F9kf0lvfSFaG+ggy5Uic4G3m2WuT4b7C/mHoxwT6/TyhTwcRSAt0/BVwEibvtfACVYg
         AFxCGxNXNAQLvgRmxhP2MSQWCDufQq2VzIyv76ZtDmkPu1y2wWMtxQfuYaJUTmV2vWl8
         3e5hur6S2V5Tm83m8HkdjZacaEjTDH4Purm8zb+ugFzBOoIrhuR9Dyt6TrYaLdlpkbTB
         7fw8EBMlX3MVzsRubTdYBxyoC8YvlYwdxtOOBBtuE6/mIX6wBMqkOI1MuAhiebBFqi4G
         6OtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.24 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZCwMPTFUweyazyZ9fpMnb6RGCjQhnUGs7TO90j2n37Q=;
        b=sVgxAGg3VBQK20usGjFfb3hZt7Z/hlLEDhhJFUd79qRdXmnN02t5pws0kbxnvaDOba
         2+C+v6pCHURvqHo1+rU5Kwzoct3zKRgsDE6jzo+3hlJsvj/O/ZuDHa2ox4gO2T+nFEo9
         hPPT8TwSxr2QG8W9KzENTFoqNNLzVTbwe/6Upp3vF2OBQkL2ZAdC1dgGtAKwj7r9kwEr
         fRsWRHnS13Y4bM/6ht1ahv+Lnvqk8NqBRjzd72TDPaC7cgoq33YywP88S1/OCXejiTLJ
         DogvQdWaE8UyJqQ4zR8WWcXpHtSfvzZ3e4WyXwrGT32cu5zTiQI4yzWeThDetVS/vRkH
         Mh0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZCwMPTFUweyazyZ9fpMnb6RGCjQhnUGs7TO90j2n37Q=;
        b=tkEgTgjkxN/CPxjRSf6klfugQXH9zLifbiIZOANFNYdoXfpJ5dEaS+418t3cxyo8Qw
         RcnS4cb4cDB98gIQQfgDssuJhdlmsLWUjBupLOMxnB8S7X0wOLOf08uxVdExzxJ5BXXT
         LjPrKmS3Vm20ugqA+1nFFeHUZ2yeONx+2ENBRaGitsjBBGa4lZ176XWuB6tP3g9jxgvN
         WEk67Un0egN4MRw4ExJ60kFgt0FcWPNNL9X+10/m6trHFkuCEKv3LZwqr3cuzcQZ+3pI
         KuTw+gAugKgbeIlQ5QIdaRRxNWGqPtaKRQghXd+6+T9hcyYsOvEgj//0dN8stozxLuvB
         AyHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU5CSiaV9DJ/lZ8MXZhb3hNO5S2Wi0cqaVV1z4YFUpAnFrx7W5n
	fPhfNeIeT06kYQvqPeEr6FA=
X-Google-Smtp-Source: APXvYqxG3Iz3eGxNC8ziVgC0q6diqXTrWuVUmyilo3V1dK8L9xvNiNTjnZ1rU7W9SRYh8Zu//0qoag==
X-Received: by 2002:a63:1f1f:: with SMTP id f31mr47715933pgf.353.1563463250149;
        Thu, 18 Jul 2019 08:20:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:680d:: with SMTP id h13ls5500046plk.13.gmail; Thu,
 18 Jul 2019 08:20:49 -0700 (PDT)
X-Received: by 2002:a17:902:9f8e:: with SMTP id g14mr4802801plq.67.1563463249833;
        Thu, 18 Jul 2019 08:20:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563463249; cv=none;
        d=google.com; s=arc-20160816;
        b=uRJNwl19ez+BOhf8578U3cu378WI1+gQ5lz1eUs+9/1QQffqsudJQCpGaomE87xGkC
         Az9Cy1uSaW0523M9GYE/WusC5azRtW955iqMUr5hW6EOdm1nJ+Ym3zrT1xErH/IT87Iq
         LGBlq0SQytCgyw4axwrZimsmv8rppE7zhK8nrQRVkNgR59H7c4jDKg3oWPkgdTLqEyvo
         FnMSotJhshdedfWfZG7hZTsi91mxWWtOh1iqE9DaIUVl0KuQNjnQbqSawJb8bIDvd8za
         7qilAknB6Ho/wwZPhyGTCtwnNwjV7PWKyKplIxm40mG6K7aktPi9CAESdXVGNL/0Qlsf
         C+Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=9S0K7e1KkG3f4heIRWWeGv4qtRCLyWyHiyCCcFtEX6U=;
        b=PcpzAXC1G20FypB9eIW5/WfFF5tNbdY8az3pCJvY7os/V5we9S8eWkEhaRoc4PMkNS
         0D4H7APQWLu5hz2Ghr9yxUW/7ykaUv8MjNCHisa5lmNyLUq6hS79weDZbuocxFykQieV
         JmE3fIEbmLJzCjbNfalTjKZSBAaAhvrpBgARD0NfiA+PhKmDfQoIKcTE3YvAb5Be1Bl9
         h/QV2io1Mbx7IBBZ/Q2yEF4+oj51obQsTnUR/jRjefxjQChi601SwCOlFEMBIg+ioYAk
         dKecRTmdIkkbpgkEYlNRx7jOdh1VFqJ798hIeufeeUL6g2kQKv3kdQu5q/tv1kK/DGgl
         32lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.24 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0024.hostedemail.com. [216.40.44.24])
        by gmr-mx.google.com with ESMTPS id ck6si876976plb.4.2019.07.18.08.20.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 08:20:49 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.24 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.24;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 7ACC7613C;
	Thu, 18 Jul 2019 15:20:48 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:2198:2199:2307:2393:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3870:3871:3874:4250:4321:4470:4605:5007:8660:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:13095:13148:13149:13161:13229:13230:13439:14659:14721:21080:21324:21433:21451:21627:21740:30012:30025:30045:30054:30080:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:24,LUA_SUMMARY:none
X-HE-Tag: bead63_23f9ecf6bca52
X-Filterd-Recvd-Size: 3930
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA;
	Thu, 18 Jul 2019 15:20:47 +0000 (UTC)
Message-ID: <cedfd2fb31d943564e19c1652bc8983a18de45d4.camel@perches.com>
Subject: Re: [PATCH] reiserfs: fix code unwinding with clang
From: Joe Perches <joe@perches.com>
To: Arnd Bergmann <arnd@arndb.de>, Jan Kara <jack@suse.cz>, Andrew Morton
	 <akpm@linux-foundation.org>
Cc: reiserfs-devel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Date: Thu, 18 Jul 2019 08:20:45 -0700
In-Reply-To: <20190718134928.2472465-1-arnd@arndb.de>
References: <20190718134928.2472465-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.24 is neither permitted nor denied by best guess
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

On Thu, 2019-07-18 at 15:49 +0200, Arnd Bergmann wrote:
> Building reiserfs with clang leads to objtool warnings about a part of the
> unreachable code that may confuse the ORC unwinder:
> 
> fs/reiserfs/ibalance.o: warning: objtool: balance_internal()+0xe8f: stack state mismatch: cfa1=7+240 cfa2=7+248
> fs/reiserfs/ibalance.o: warning: objtool: internal_move_pointers_items()+0x36f: stack state mismatch: cfa1=7+152 cfa2=7+144
> fs/reiserfs/lbalance.o: warning: objtool: leaf_cut_from_buffer()+0x58b: stack state mismatch: cfa1=7+128 cfa2=7+112
> fs/reiserfs/lbalance.o: warning: objtool: leaf_copy_boundary_item()+0x7a9: stack state mismatch: cfa1=7+104 cfa2=7+96
> fs/reiserfs/lbalance.o: warning: objtool: leaf_copy_items_entirely()+0x3d2: stack state mismatch: cfa1=7+120 cfa2=7+128
> fs/reiserfs/do_balan.o: warning: objtool: replace_key()+0x158: stack state mismatch: cfa1=7+40 cfa2=7+56
> fs/reiserfs/do_balan.o: warning: objtool: balance_leaf()+0x2791: stack state mismatch: cfa1=7+176 cfa2=7+192
> 
> Reword this to use the regular BUG() call directly from the original code
> location, since objtool finds the generated object code more reasonable.
> 
> This will likely get fixed in a future clang release, but in the meantime
> the workaround helps us build cleanly with existing releases.

The original code read better.

This is kinda a gross solution that should probably be
commented on in the code rather than just the commit message.

> diff --git a/fs/reiserfs/prints.c b/fs/reiserfs/prints.c
[]
> @@ -387,7 +387,6 @@ void __reiserfs_panic(struct super_block *sb, const char *id,
>  	else
>  		printk(KERN_WARNING "REISERFS panic: %s%s%s: %s\n",
>  		      id ? id : "", id ? " " : "", function, error_buf);
> -	BUG();
>  }
>  
>  void __reiserfs_error(struct super_block *sb, const char *id,
> @@ -397,8 +396,10 @@ void __reiserfs_error(struct super_block *sb, const char *id,
>  
>  	BUG_ON(sb == NULL);
>  
> -	if (reiserfs_error_panic(sb))
> +	if (reiserfs_error_panic(sb)) {
>  		__reiserfs_panic(sb, id, function, error_buf);
> +		BUG();
> +	}
>  
>  	if (id && id[0])
>  		printk(KERN_CRIT "REISERFS error (device %s): %s %s: %s\n",
> diff --git a/fs/reiserfs/reiserfs.h b/fs/reiserfs/reiserfs.h
> index e5ca9ed79e54..f5bd17ee21f6 100644
> --- a/fs/reiserfs/reiserfs.h
> +++ b/fs/reiserfs/reiserfs.h
> @@ -3185,10 +3185,9 @@ void unfix_nodes(struct tree_balance *);
>  
>  /* prints.c */
>  void __reiserfs_panic(struct super_block *s, const char *id,
> -		      const char *function, const char *fmt, ...)
> -    __attribute__ ((noreturn));
> +		      const char *function, const char *fmt, ...);
>  #define reiserfs_panic(s, id, fmt, args...) \
> -	__reiserfs_panic(s, id, __func__, fmt, ##args)
> +	do { __reiserfs_panic(s, id, __func__, fmt, ##args); BUG(); } while (0)
>  void __reiserfs_error(struct super_block *s, const char *id,
>  		      const char *function, const char *fmt, ...);
>  #define reiserfs_error(s, id, fmt, args...) \

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cedfd2fb31d943564e19c1652bc8983a18de45d4.camel%40perches.com.
