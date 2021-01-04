Return-Path: <clang-built-linux+bncBDLIXLMFVAERBLU6ZT7QKGQE6AUTVXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7402E9544
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 13:50:55 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id q13sf8920287pfn.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 04:50:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609764654; cv=pass;
        d=google.com; s=arc-20160816;
        b=WezLGrURgPn+/O3RQ69VTp7FhKQLZJe7+MJHYJ0ZR41aHGsvmh/4gGH+wnr/+80PUT
         3hR+2tvW2rTNHmbWjITbs6b4oHXiGZEPv1g+Zjd3Gc44FcRpWV8m2KIXaNhvrU87lCMY
         dNGTHvzVvoXbWFsFA3GgCgA/sGkGEUAXqRRDsFxxXXL3UyZnlne987gQkoF00IdLBbQG
         yjyQ2i3NUY5HNNRS6END5f4ecO4Q4VheJPyuwbYYkZrGxjMJKsuM0n9KGdxAp63j2phk
         hfCsdM3o6EgVZGlEw1c11fuxCcKJWXq/ZmDsRKbZvREL/aw9Glb0tr3Lt9w/NfA8p9Rx
         Xsdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:content-id
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :sender:dkim-signature;
        bh=DmUh2bC76LnoevpaZTsxppbZOUIcsXdFxx7s83WYktc=;
        b=SzPX0vBVA7wTXTQNWdK1FjFTQseWaSX6hX9ETCAXsbmmcT8cyXHEauabsqwF7/w7KM
         7gDZynIe5bBUYAzsoz0ud2RfCuZd2IIHNYReYuWRTM8sZI+SEL0iDeB+tWV9cZnxcVzY
         aGhrytQbjVWIZFZMPYwVL6grTSFm1rWKUpCJBSF0l2ONxAJIayTJtfB2tEN/YcSEiumc
         Tt0h32/hd1El99mEkobMCgAbHNwGU0yaSORN1pjObAJ3n+d06HLYlPWIr+wielP6iyHC
         xC1HMFMqh04oPp2Fttv4jmHkcuZ37scZX9DcA35zL91iqFhrb1m68BIRBhk778m8JOtv
         vJ3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YPwAv0r4;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:organization:from:in-reply-to:references:to:cc:subject
         :mime-version:content-id:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DmUh2bC76LnoevpaZTsxppbZOUIcsXdFxx7s83WYktc=;
        b=nWsvKSF3irzEbZ7fu4Z7PJG9eVJ3U26UScOWmrTWk5ipy4lOjRDXRQLpoqFhDvLVM8
         AU8ZT8m+InY+mXA4V5aRqnn9/BB+L6MW2Bj4uTAGsGd/Uu29lPkSWjYlOUctkrnSdU+w
         IFiiVsshqgE1PhizY9JRaCFyWhudL5CeHH/Os96MGd0tVLjC3NFeuLFJ1r6DGMSJmjeR
         RfEbDN/cU1z4R2rq0be42BsjoDb29vdPWXfAQNiNtNFxq844woJ+/8FTblfqcTiDgBdH
         mB3BcQhvk0cnQV/jK5W+uoV9fAVz1bGc7+hnqKNFnpwXLyYArZFenZ4H/y/prijM2m6H
         0bag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:organization:from:in-reply-to:references
         :to:cc:subject:mime-version:content-id:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DmUh2bC76LnoevpaZTsxppbZOUIcsXdFxx7s83WYktc=;
        b=bH5mYlzYXnqlfiXgcNxM5YHwZWtJVOYYXD+/Q9rz/Ze3RwI7KWw8cdNYSHAkZb26xE
         xO2K8jsvTk3oCzTtvy4uwcQW6TBttNZpFW2mV5NobL7Mm7kz+AHbXBp9PnFl1JotnxMs
         65pel5hUSWkgMgbh0VP5R9ZW2Jk9By2qY+qQbRw6UgI2g8uadtu+nDZQhYs5hlfG4fHw
         1A+29E04SCAZVxhSWQmTe+cZp5NfkySHs8nbPAaYkw8pbFtC+jr1x4FlKpdrPPGiG7vI
         TOp8kK6fJpqgMpB7Ullqe1q98JLNRBqlzeY0liOoaMDKK6rhKO2uNMx9QkhJFVBtmh/r
         KzjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rz2WHSf2MYnH48xOd6B/zT79rhbib26uHj7VozkniNjtiiPTw
	FBBQJS8jdbWJVnjgY8PfHBs=
X-Google-Smtp-Source: ABdhPJxthbHbXWLPBAlBGl8Lf7PzkCwmoVC+2t1nA8SARAP9iY5THaZgdMu82dRkn8dTNVwcWPcl/g==
X-Received: by 2002:a63:c10f:: with SMTP id w15mr62931186pgf.99.1609764654298;
        Mon, 04 Jan 2021 04:50:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls28280441pfi.3.gmail; Mon, 04 Jan
 2021 04:50:53 -0800 (PST)
X-Received: by 2002:a62:ae0c:0:b029:1a5:819d:9ac5 with SMTP id q12-20020a62ae0c0000b02901a5819d9ac5mr43098842pff.26.1609764653681;
        Mon, 04 Jan 2021 04:50:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609764653; cv=none;
        d=google.com; s=arc-20160816;
        b=SfAFWXOP0XXg1KkqIsbJCDtXTj55JVXuj6NTnZl99B0PJOeBtIMAA7BHjK5a/C3BB4
         Qk6ek5ZWlZqChTUPZhIGngI77YIk/QxLVMlJssVl82IVpnPBjeKow/9u0BDH+tqU3Rvr
         FRwnRVE+NBr/k2KeijbAG4mqV2tweWjYf4j+mSELTVQq01rUp5imeFUrvnVWMq4WZspV
         71gCft4gdVYgEBGHgijnBiX4jo0GBRYrPTeraNXFEn+hYghduhXC57FbPT73hEmBYgN0
         5BBkAAS+pH7QVUo8A/4F43rKhggOCz1mMYSeHACxNeKQt7dkvSrUlZHtmPtR4nrqbHYv
         keWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:content-transfer-encoding:content-id:mime-version
         :subject:cc:to:references:in-reply-to:from:organization
         :dkim-signature;
        bh=D7cdYIjLB2TJwkBcPMV987oTnRn/FEmni88uTGzxuGA=;
        b=PTxvCb3apTcYmSRo6kXQqz4fosREki/evhod0pG6Tz9fEbMczalJsk1i1nfhnYWirr
         J2PsdUaFSfYxR1LJN7iKcMVGWDXfgBPCqkfcZ/pvzQKGocXDTG7F489CGozjbvw+VMZ9
         ZUJfO2Oqm8acokLLYwQBODTLjSFRuGwlqrD9EAr+rPWHSSmBSA6iOC1TFb/U5cw1/5n5
         ZLHrEe7eIkOWubBb+m5+ZLXZ6WwDk39uz3G8IjNUuU4D+QB1++dmQq/hH5ggKkaTNUoK
         B6PnpzH4wlz2ELOmcHwgGuBh8Dt7rrVkwrxO4Dm1HO69aX8np4LBYr/287fmEgZdQugR
         fZMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YPwAv0r4;
       spf=pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d2si4149118pfr.4.2021.01.04.04.50.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 04:50:53 -0800 (PST)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-173-mAxJZbDYPF-TPxibUqBH0w-1; Mon, 04 Jan 2021 07:50:51 -0500
X-MC-Unique: mAxJZbDYPF-TPxibUqBH0w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 750D1107ACE3;
	Mon,  4 Jan 2021 12:50:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-8.rdu2.redhat.com [10.10.112.8])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 98D526F920;
	Mon,  4 Jan 2021 12:50:47 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20201229173916.1459499-1-trix@redhat.com>
References: <20201229173916.1459499-1-trix@redhat.com>
To: trix@redhat.com
Cc: dhowells@redhat.com, davem@davemloft.net, kuba@kernel.org,
    natechancellor@gmail.com, ndesaulniers@google.com,
    linux-afs@lists.infradead.org, netdev@vger.kernel.org,
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] rxrpc: fix handling of an unsupported token type in rxrpc_read()
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-ID: <259548.1609764646.1@warthog.procyon.org.uk>
Date: Mon, 04 Jan 2021 12:50:46 +0000
Message-ID: <259549.1609764646@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=YPwAv0r4;
       spf=pass (google.com: domain of dhowells@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
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

trix@redhat.com wrote:

> -		switch (token->security_index) {
> -		case RXRPC_SECURITY_RXKAD:
> ...
> -		switch (token->security_index) {
> -		case RXRPC_SECURITY_RXKAD:

These switches need to be kept.  There's another security type on the way.
See:

https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=rxrpc-rxgk

for example.  I'll have a look later.

David

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/259549.1609764646%40warthog.procyon.org.uk.
