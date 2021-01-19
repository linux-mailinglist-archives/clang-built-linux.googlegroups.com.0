Return-Path: <clang-built-linux+bncBDLIXLMFVAERBB6VTKAAMGQEMRBHMMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C4E2FB507
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 10:46:48 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id x20sf15855399otk.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 01:46:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611049607; cv=pass;
        d=google.com; s=arc-20160816;
        b=g51/CAaLkrkJzmYPlFTQz6eBIY5Jdt8RvQI54fJmm1Vn3OlArIoPFm/cfaG6RORkAN
         5M50L+Un/gyo2RyyvuvP/etfnGQRBbsrD2ecffFvRh7GnyfAqpnLnnS6Ck4KeiIuBoDb
         vtEqRw7eFWatNAf2IK4I9TFxc6R7blffCRASW6Yb0t9Qf8AsZb4MoHhlhzLIRsHVLwUD
         bdOpbr2a9lBXZ7bswtdoX0MLl69yXiJp3kl0uxXIsOwTsPYA/1s05+Mk8DAlof/ULTQy
         VvCZDJS+b7V5bZL+wRCrZO+uovD1ki2NxVuOku1RM7fz2nNSKPN+HAK8mFT2BS8vX+0W
         vHmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-id:message-id:date
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :sender:dkim-signature;
        bh=102IRxcDKIOGGAPGPiU057Y5om6Yz7KTmOa8ixz7rZ8=;
        b=yTT/W8do8CSRmOSVFQzkcAhnw1gzVYq315VwHj4RwgceDv24vhPcTrM5WsYwiUfQAu
         gH8dMm0WoF8KzuQjKgRTT1dy7Ae5v4QOCOx85UvYbnLFjOSozoGsOeGQxGBDvo/fur6F
         V1HOBfZJy7rcAo1j15qG74G874dKBIWjGZYtgFnB1EGP1b+nJ6zIcmFZVwIjpwLH0w9R
         ODwra3HlmTLzcPEnNGAfnHypFKURmCNQNedjp4UdZuJi9YIIfos6xWhpdPgwTC2g6HTG
         xJXOuzW0zfxxXIe8fjyt2bfkFt9AD7dTz1YzgF8mx5kn8gpvfN8kH76e8lcyWVla4/6g
         QP+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="XV4buh/X";
       spf=pass (google.com: domain of dhowells@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:organization:from:in-reply-to:references:to:cc:subject
         :mime-version:date:message-id:content-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=102IRxcDKIOGGAPGPiU057Y5om6Yz7KTmOa8ixz7rZ8=;
        b=NBkcn2mXtzxVjq8jdGLST6qzX92SRsiRmzHV/07FH+WnJFyOrBby1Y7z0sUgQtwZ8D
         UkPw8ZmtEN02ofLjFlUU1kLTIjjWkpBqF4BK1ocyYiWalY+cpxGZJc0XbzEdpDkXYUdm
         ippejAgsA/IaJDDAc/VzFM5jjR2vR9/xPpBlNva0hZjWFA6zn+EItZU8npM7rz7/qqB2
         ILqsi3ULMEcsZBX+roi3CojO40aUKOqfq7HC1GYP2L2GtPAybq6pTm/axkU0lYMPwfkS
         btKIDghPcV+hQ88DKX5i0B9Lgu2eKdeaXX2B+mAWZX5POoz/b9S4JK43aHPLVEqLIF5t
         KOPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:organization:from:in-reply-to:references
         :to:cc:subject:mime-version:date:message-id:content-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=102IRxcDKIOGGAPGPiU057Y5om6Yz7KTmOa8ixz7rZ8=;
        b=JwHSE5pJniZ4nMla9ju8dinqwGzI81a55AQ15bv05btEd59h0+zmPzAqQplQ6AN7ZF
         UTTVasC0Mj8fBn+pUum+hE3EKmeSu2UKdN+8E4ESi1VKj2sXdRlEV+WuJMu2bP5dxMCX
         TuqgqxaHA+/dAH16nJuu65orK5fZwrfgeU1sTkGVzaJJgeWBZkjm65iMFkTeldZxQFSJ
         g6A45BsYd5eBVmux7seDl9TJLHg+j1PvxWBeEu3qYwA0QxD2ZVaeAbHdkCjYh8orN4fC
         7yjR2HWDEfP20KP9CB5FkVUaI7aF8iXG58WcmoOCmjy6kWq6LLSqVTJIppyvpRueGIaD
         t7fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320OtLk8a9RKZtTzBtsRNlp37IA5Axzr3Up9iV7ta66UK6JFg61
	1hUgu5jrNVdKjtKtvU1iRrY=
X-Google-Smtp-Source: ABdhPJwwOctm+tvWkzKTqsO3CMgKJbZhw2SrF06ww7ExL2HYeCVlZiw7npS9JUdPIEnnkUIS0FtIOA==
X-Received: by 2002:aca:480f:: with SMTP id v15mr1946529oia.56.1611049607106;
        Tue, 19 Jan 2021 01:46:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2119:: with SMTP id 25ls5136001oiz.10.gmail; Tue, 19 Jan
 2021 01:46:46 -0800 (PST)
X-Received: by 2002:aca:4b0d:: with SMTP id y13mr1911828oia.7.1611049606713;
        Tue, 19 Jan 2021 01:46:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611049606; cv=none;
        d=google.com; s=arc-20160816;
        b=E4p9EJ2PPnBwA0RzkfdqGg5gegnnfUKSkofEnZJ9Nnk54OXcvCu7tzUC1nQjRmiIeL
         anFxZuiQHLXCD2/d5sB/qKabr5CEWyD50H1RmQUA++YRzFH/d7ip7mGUzy96Drrbd8CH
         KDSRdRF7j94iHw8xA9BeW6KHL8B7toEatDhPVJ+gB57/ppwVf787OcOePvJV6bpbyBrR
         Ug9yiwpNwvMkdGoM0F5H9qWhewwO8Ek/7QOrCwJIxgn5jPRvwD7vRclMATCFEgQdcHDX
         3uarDVbusRgaNwbqRM2OHUQziRuHvRNXnJQ9wjuLedaSagMwNniKh/QWxFNBX4NGlcHt
         PZxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-id:message-id:date:mime-version
         :subject:cc:to:references:in-reply-to:from:organization
         :dkim-signature;
        bh=Tg3juwU1WZHrMtxsjy5AEhmU/AfyRPFdBVBRhAoFECA=;
        b=esPWhyZv5tDL2U34gTo/FXt08NdfnDHs91Dn1e4LGE5CFGt+2sIbmQK+qzgA65kYjS
         htIsrILM8XV/BIoiO655zPPMbbtmcqHVZcX1Enj95ZcanybhQn0/rTc/8cabbHypRqAx
         OvDU0sTafaPrV7miL1b1tmRuuvGHHZ4u49v9FBk24sxwA84xXZVtajSv8Zqu9SC6D5C3
         I5lh5D7lhQ2raX4HCWjGc5WRxNTqW9dx03OlE+jbAaElWaLQncxCI6mW6f3e22AT587Y
         9MJeB74ToSRi0c4hHUhgsJBhLN8E0n0H1fe/meFG0bdfYnXycYSAF4FUKH/5YmyVB8U2
         u6vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="XV4buh/X";
       spf=pass (google.com: domain of dhowells@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id l126si688510oih.3.2021.01.19.01.46.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 01:46:46 -0800 (PST)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-ObEXr21SNCiijL0HLgMfZw-1; Tue, 19 Jan 2021 04:46:42 -0500
X-MC-Unique: ObEXr21SNCiijL0HLgMfZw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E97A8066E6;
	Tue, 19 Jan 2021 09:46:41 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com [10.10.115.23])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8A3D627C43;
	Tue, 19 Jan 2021 09:46:40 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <202101191407.7rfreS4b-lkp@intel.com>
References: <202101191407.7rfreS4b-lkp@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: dhowells@redhat.com, kbuild-all@lists.01.org,
    clang-built-linux@googlegroups.com
Subject: Re: [dhowells-fs:fscache-netfs-lib 11/24] aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `fs/fscache/page2.o' being placed in section `.eh_frame'
MIME-Version: 1.0
Date: Tue, 19 Jan 2021 09:46:39 +0000
Message-ID: <189650.1611049599@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-ID: <189649.1611049599.1@warthog.procyon.org.uk>
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="XV4buh/X";
       spf=pass (google.com: domain of dhowells@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
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

kernel test robot <lkp@intel.com> wrote:

> >> aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `fs/fscache/page2.o' being placed in section `.eh_frame'

Is this a Clang bug?

David

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/189650.1611049599%40warthog.procyon.org.uk.
