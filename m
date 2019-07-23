Return-Path: <clang-built-linux+bncBCFPF2XH6UDBBX6G3HUQKGQEWSZWSHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AC270EAC
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 03:31:12 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id g13sf3000669lfb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 18:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bhmV4gHDNShQfgsNnThILElcDUdkxuuUuBkIWXzCWzg=;
        b=p8XOgtHPJJ9WfO0O4nREcCkzLG8VVedY8BMpwCkr48moc5kAcPZDp4f0fpYMJPH1EK
         VENNR1+IAhqPmkM+1C7KTBu0RwiB0giLufspZBORxDE/515fF6kPJrpSmXvm8eerAnp4
         BgITDsfQRt/E//fUj0d1MvRGsL8462NfIF07xRk10rgFdlVMIsN5jFvu9aVDIbY1kR+7
         k79ywyIHK2acHJvkSlm0mJF26hQBXCi7pYVAIWwxpHnhyP8PSoOCxSpqE8IW9jVHfbVG
         dkq+VXR41CFZoI7h0InouCswqzZOWxqCRg3fsvlXoJuFalVCqinLVdJccfWZKCShIrKx
         KJ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bhmV4gHDNShQfgsNnThILElcDUdkxuuUuBkIWXzCWzg=;
        b=Oqviv9HLKQgSiRxapQrR6YE+QaUeJepmHMgSq+piTfVwwEluiAzYRqjtNBUrCQiXlz
         yZ7dI4OMl8rv4dUV2AMg9PjGRwXsfs9dqsRpUlstJcqUND2n8yESoLvbZYcjJoNeJtcW
         hRamqrkzZQ0crx5YKXl1jiOJGF3314JPdievy7HljsmpLBsh678/ZTIKDb7VlOkOlO7o
         ygF1SjoAJ73PguE6GdDR92clCvw4m0HoD1VLQSQdfdM4GW99Hf9BxZsnnsJ9njU6iUoD
         FEbwftOhaePcK7X3Ss37COEIaiiLIuBKMDHYiUOs5/oUwsFB3Fm9ebt7A6gk/ZM89w2S
         dK1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUteVNyueYbLSeVYsPA9tAQyuU2qRc38ktL8DuYJxZ5GRirYeTY
	vdAs66i1FldpqcuAzELrF0M=
X-Google-Smtp-Source: APXvYqwRoIe62sMpSiFaCSGgg+bLq67qk9+Ro01b+tVgKf2FphVbrHwZVPTZObl/dW0D/1ba9r/NmQ==
X-Received: by 2002:a19:4aca:: with SMTP id x193mr29390210lfa.146.1563845471601;
        Mon, 22 Jul 2019 18:31:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5b91:: with SMTP id m17ls4649962lje.10.gmail; Mon, 22
 Jul 2019 18:31:10 -0700 (PDT)
X-Received: by 2002:a2e:a0d6:: with SMTP id f22mr13341610ljm.182.1563845470831;
        Mon, 22 Jul 2019 18:31:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563845470; cv=none;
        d=google.com; s=arc-20160816;
        b=RWmDOSPf/mbkU5ednZD9RX7iogirrjG7xtUB2Ao3WKtJ0iSVX8jMbOlJPA68K+uYlC
         t5Qyrcw9H6RBxL2/t8Z/m+SziahWhIjwk8gzU4eOSqBbiHGxwZrFJbNMngekgVmpAwLU
         bv2sbJj9HyLGC9Q70PTUsBsKaAUp0WRb+ZyLHOOvv3agNZlC8q39JTxdqCtiIjOZTQ2b
         +vOtG4SHJOWXvHtlpcxetCYvsbVcUCwbZtz/odjk217ebUklTHk3xghpGjFC/yETCRQU
         ptGU9GzotF5/bDfPS07aHw+2T4Ir8doH1SMvWchT3E/ZGX8GnXaYlKGysSkCf6RxIaKZ
         1UDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=bhmV4gHDNShQfgsNnThILElcDUdkxuuUuBkIWXzCWzg=;
        b=gYDnxecYqX/fzlLXEWTbWmLsrDsSwxxrU0/jHLJQsCLF4InmSJab9o0jlJq2EZvbqn
         RUIXOlF4MvhohvgT0eO3FXwn3Bi0k6xTS/I37yCz+Yde29Lkh3VXm1vExak/+S9FOPIq
         Ur50pF2rTWWo2cAAsPg9e/NI4mXqn6mgJMc5tJEni5l61EpUagHI52OKbwf5jc2d8RhT
         f/ti24QPSSwOfSu5NEISAzqP7kiUu0ym6LStFwC4OrTFKgG6PuOLbRKn4VxeTlx766Sz
         bZed7+jgOMbE2kHnUje7Z8NS2sT+rjcZYREYSuCUvgg7Jqvp9M3CUQHA4+QynP2QUtRj
         kEjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id f26si1871537lfp.5.2019.07.22.18.31.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 18:31:10 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id EF0E115305EB4;
	Mon, 22 Jul 2019 18:31:07 -0700 (PDT)
Date: Mon, 22 Jul 2019 18:31:07 -0700 (PDT)
Message-Id: <20190722.183107.298639131733640783.davem@davemloft.net>
To: arnd@arndb.de
Cc: dhowells@redhat.com, keescook@chromium.org,
 linux-afs@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] rxrpc: shut up -Wframe-larger-than= warnings
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190722145828.1156135-1-arnd@arndb.de>
References: <20190722145828.1156135-1-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 22 Jul 2019 18:31:08 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 22 Jul 2019 16:58:12 +0200

> rxkad sometimes triggers a warning about oversized stack frames
> when building with clang for a 32-bit architecture:
> 
> net/rxrpc/rxkad.c:243:12: error: stack frame size of 1088 bytes in function 'rxkad_secure_packet' [-Werror,-Wframe-larger-than=]
> net/rxrpc/rxkad.c:501:12: error: stack frame size of 1088 bytes in function 'rxkad_verify_packet' [-Werror,-Wframe-larger-than=]
> 
> The problem is the combination of SYNC_SKCIPHER_REQUEST_ON_STACK()
> in rxkad_verify_packet()/rxkad_secure_packet() with the relatively
> large scatterlist in rxkad_verify_packet_1()/rxkad_secure_packet_encrypt().
> 
> The warning does not show up when using gcc, which does not inline
> the functions as aggressively, but the problem is still the same.
> 
> Marking the inner functions as 'noinline_for_stack' makes clang
> behave the same way as gcc and avoids the warning.
> This may not be ideal as it leaves the underlying problem
> unchanged. If we want to actually reduce the stack usage here,
> the skcipher_request and scatterlist objects need to be moved
> off the stack.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

David H., I assume you will take this into your tree.
