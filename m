Return-Path: <clang-built-linux+bncBDY3NC743AGBBFWGVSAAMGQERDHYL6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 88601300C16
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 20:10:15 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id a3sf3041368oon.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 11:10:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611342614; cv=pass;
        d=google.com; s=arc-20160816;
        b=scfemzNOxLXa50Wr1w+FKmkVXPh8oTCeJx7lhcLtcOKgqJCejz89y3pVtYK80x/RZE
         duE82Cm7APbnd7Bdh3jzOn75S1LwMI3lJ4dxZS1DvlYfM3bXhGdCHBXNdR8lF1F1JpOE
         3zEFqY5jXTUtWdMGM0xFEiH3kT8RuoHybRVttg3rWXLatRZ2zj1z1xG6GnaM6NjY81dF
         90iDmu3KeMk0mIQ+NVvg+IvJS77KadKhOspCWTxDeDsarHPeZsT/RO7rfORwDSALA+FA
         SZP1RS9iM3RLwH8kdErzT2Px3zIy23crgE2rG6fhkk42eEgPG03vhx4Mrfvhzhzea3g/
         eIIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=hIfwXNqPU0TSNJTLHQvYuYpyjttWuRb2vpUnWRTMD2s=;
        b=L4M2EqjIGCoYctbnYuP+JqhWVNfLOFHssoKqcMUA9qaMFtTGisfKmqoEjXkRaP8cMz
         vvYj4uQkSRGBRR4pAZnGLzYOQ6XrbMXNJzNyInRzRNVx8+Lwlry1HNOCFAhzXBl7DUFl
         W1nPq+zlhULVqm9nA3PTA5UBfI24GDKRPZG2Fvo9BTslzd5XxbN4t2n/POZLjrD0XPJg
         hkUsZ7CyC1Oz4QO2vSJyOe6hX+2C1rL0RZdOVwzDUiEKfBtuFYtm4UmTOa9/iTmI+WQx
         7H6Zr0ALfP1w+ZaR7mH+EGb53V6B7PLqXHLPo0svwfBNfl304l0aVI8ctpw8kp0pn0mG
         KMPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.69 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hIfwXNqPU0TSNJTLHQvYuYpyjttWuRb2vpUnWRTMD2s=;
        b=RjwOvfK4CgGJ+EhlgaM0+ASj4pd653lkDKYI71llywjP93LX4nx53tQoTEtcV7ySQ+
         BFr4ZnLBV9IVrChvdxcvNDFPZkAX9osDDuuzF9w+j3PfOrJ2ZF3lgse3yZnYZlWbcXzx
         CLCj2uBXJsD1SIumObLKw4oLME/txkM4FXQ62b2FDdqng+j99F6BE7oKUMc7BqVyt2dH
         nTTcatXQPnyPhG9NV5GrOwFiwozaMy6e/JMwGXN1/ndWOeyQAq55xknog0XIq3z78H5m
         RaQCrRpVq+sKcEWu1bJjp0rdfTdxaJZSl8EVsQvVTL6Wu6DAQC4XoHhdcrH2Wg/AWHRD
         Eq+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hIfwXNqPU0TSNJTLHQvYuYpyjttWuRb2vpUnWRTMD2s=;
        b=QlS80QdbnTd9tgPUDtx2i4UOQ9cirSfIZeWRMz8df6viVIQs+J6y6LA9jV7B4phmre
         JB0aIfFkh2/QSeaEm2COoEP9PorsKbaGoZc5ePXpjkasLd1/fBVNz5Bn4F/c77F8YBuk
         A9OtTIrya4rSW0PHa0tdikQXyhNnmYl/fDvSR40sucS0GpHVeR1RzJAxnlyDm6StWGFU
         +5WarHrodOHPMi1XILRHNY+BeVV0ZU2sZMOa+xniqITwRQvKokzNmlJ/tgg+JLQFX6R6
         8k9/Ymj4kPxHXHAHE4mneQ87Im1rfSfabj/fIb7hVYJJLGIWffCcA1DU74fy/HRUOcsE
         roOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532s8Ed2J6JSvEl7rG5aL4v3TNHU9wxJSXPBCqe0wU0/cA98ESuV
	MU0WYozliKqq0QWB0RgHG+E=
X-Google-Smtp-Source: ABdhPJy5UywE7Bz2zuv/hAu7CiH8WO9/jv7yoAmWBYxErfHiaHepQkKlIPYrrzsPi8WS4FrO/5UgKQ==
X-Received: by 2002:aca:45c6:: with SMTP id s189mr4318217oia.150.1611342614561;
        Fri, 22 Jan 2021 11:10:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls549846oif.10.gmail; Fri, 22
 Jan 2021 11:10:14 -0800 (PST)
X-Received: by 2002:aca:abc5:: with SMTP id u188mr4376153oie.3.1611342614080;
        Fri, 22 Jan 2021 11:10:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611342614; cv=none;
        d=google.com; s=arc-20160816;
        b=UFKxlL5g6JzrqwxKh/FrKfcuQUrl/QmzAVNF1rDHQ6MMesJg6k+TB8kvQE8034e8No
         eJsYa9hmQALw9MRBxPIPqBDBp+gT4+CHzq7kLP3kP6Ti1Ab9HdrSuXXhI0uRx7dXI0o+
         iMgrOojSb+kk4P9sJ0Ee642H+V9rEZ+D7wQ3MzCDNFt/J2DlNklEvx4HMNtscHoorvL2
         mloQnubTE+MCF2Dm00CUEtCvI1sTHDQ4Ir7BlSHvZHr/xQZtXtDoGNQxL9+uGHsQ5KuZ
         ZhBOR2hMKGArjrsck9mtVwBJSLs8ICCviBUzLU3O4YfNlcXZqaYk+AJiOc4qvgySubDH
         xmOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=JbcscvHJnC3tnkR4ephDaOPlPEFAx6yDSxIQ8juXKK8=;
        b=gsi3gUuwgOLaV+41X0xMiJhYXjXIEJTwaPNRJOrmZ2cZ71gazNajfcyPXQlCfFCFiH
         SPBxN0HSy0mvIs8DvYJc2FkOC45Sa2dRUEO0LAZ6yx3RzUv2VUmX3JUn7/QbMo2f//4j
         V2yafhV99O9FEjk5Fu7gk4vG+5ABWP0v1pfXbJ0gxHvPonWSTIk4CTECi3Xxk35kUGeK
         a0ckCCwTnbCjlHHIUVGpXsYftMBNZER6GFqL5gNO4IZF5vfvgPNCLLacJ9r012NwGUtU
         MhEYZ8UoSE7wQMjEu6zBJjPbGG2uXGRIc0efUhsCL017Ht2gqHlOxM6PeP27ixITioym
         hTOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.69 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0069.hostedemail.com. [216.40.44.69])
        by gmr-mx.google.com with ESMTPS id a33si574042ooj.2.2021.01.22.11.10.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jan 2021 11:10:13 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.69 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.69;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 62056100E7B40;
	Fri, 22 Jan 2021 19:10:13 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 30,2,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:967:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1719:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2691:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3653:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6119:6226:7652:9025:10010:10400:10450:10455:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12740:12760:12895:13069:13161:13208:13229:13255:13311:13357:13439:14181:14659:14721:19904:19999:21067:21080:21451:21627:21660:30029:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:1:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: slip91_5f17ab72756e
X-Filterd-Recvd-Size: 2290
Received: from [192.168.1.159] (unknown [47.151.137.21])
	(Authenticated sender: joe@perches.com)
	by omf17.hostedemail.com (Postfix) with ESMTPA;
	Fri, 22 Jan 2021 19:10:11 +0000 (UTC)
Message-ID: <27366417ad75e0300d4647f776ca61bb1b132507.camel@perches.com>
Subject: Re: [PATCH] checkpatch: add warning for avoiding .L prefix symbols
 in assembly files
From: Joe Perches <joe@perches.com>
To: Aditya <yashsri421@gmail.com>, linux-kernel@vger.kernel.org
Cc: lukas.bulwahn@gmail.com, dwaipayanray1@gmail.com, broonie@kernel.org, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	clang-built-linux@googlegroups.com
Date: Fri, 22 Jan 2021 11:10:10 -0800
In-Reply-To: <98d40817-1f80-c772-eb9e-a6c3c04625b3@gmail.com>
References: <20210120072547.10221-1-yashsri421@gmail.com>
	 <e5c5f8495fbdd063f4272f02a259bbf28b199bdd.camel@perches.com>
	 <14707ab9-1872-4f8c-3ed8-e77b663c3adb@gmail.com>
	 <fb1b511d71761c99a9bece803f508b674fce9962.camel@perches.com>
	 <98d40817-1f80-c772-eb9e-a6c3c04625b3@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.69 is neither permitted nor denied by best guess
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

On Fri, 2021-01-22 at 18:48 +0530, Aditya wrote:
> On 21/1/21 12:13 am, Joe Perches wrote:
> > I believe the test should be:
> > 
> > 	if ($realfile =~ /\.S$/ &&
> > 	    $line =~ /^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) {
> 
> Joe, with this regex, we won't be able to match
> "jmp  .L_restore
> SYM_FUNC_END(\name)"

I think that's not an issue.

> which was replaced in this patch in the discussion:
> https://groups.google.com/g/clang-built-linux/c/-drkmLgu-cU/m/phKe-Tb6CgAJ
> 
> Here, "jmp  .L_restore" was also replaced to fix the error.

Notice that this line was also replaced in the same patch:

 #ifdef CONFIG_PREEMPTION
-SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
+SYM_CODE_START_LOCAL_NOALIGN(__thunk_restore)


> However, if this
> regex(/^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) is
> correct, maybe we don't need to check for $file as we are now checking
> for just one line.
> 
> What do you think?

The test I wrote was complete, did not use $file and emits a
warning on the use of CODE_SYM_START_LOCAL_NOALIGN(.L_restore)

I think it's sufficient.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/27366417ad75e0300d4647f776ca61bb1b132507.camel%40perches.com.
