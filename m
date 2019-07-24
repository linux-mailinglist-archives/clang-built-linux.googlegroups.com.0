Return-Path: <clang-built-linux+bncBCFPF2XH6UDBBEN74PUQKGQEWK763YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 340F17419E
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 00:45:38 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id f3sf30976650edx.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 15:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XrNDYOZsB0D7c9QlyUrmNQuE+J1dIh6bo6gnH+d9kQ0=;
        b=Tuzn4rzP1QFLmeJmwITW11aGUKN9eXWZYuvXUomST0+7JbCXNNJOfae+KNVT5VKp/2
         vczoVqZjsiRCdiJMjPtmHq8r0Ga02Ma5pVrZh1oNPnRsDzbRSNo2JC75SOlYrqVfCuOM
         rTPw7pmX98twSVG2U4+YHU0HJzjadqRtpMmXSxoLe2CJC7e8nEncASVObkm0jZQS5weu
         DUHzj1X+5ph9gRMvRXw2Is5bbg129TT7Gp8PVSaj5heixafHBKn5Egt8WNmPTfl1M4qs
         sPU13Ay9X/psbL5UR8I4jZvZ0BlcRxUV9kA5dw0swjOW09lHfuV2O2wxAqEjXmobAhx4
         dPuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XrNDYOZsB0D7c9QlyUrmNQuE+J1dIh6bo6gnH+d9kQ0=;
        b=lJXX8qZgvfVgvPGCcwu/Zp5aTquxvFKdq0oyrvaxAkUPBdq1aMCDaK3U9haoSk7Zi8
         Yp9NqULsvaUFF+sdgW5RjoixalOmw3CtJMmz4/NAhDjijkdil43cK/FPosTEO/+t1Wat
         nIR8VaDsOoEOk/hV/yAhTNlWDz8SpgyuYCMqlJa7kgSYkuNygcN8l/zan+dTiq2fPCkU
         T7oE4d6mlH96xshE6hUVQiNJ3WTlPZirCr54W/TYskUYnBz9EkDagYRSRfV7KDhLqh2p
         PgLS/6w9M2Osc8g9NydGpukvyY23rFYZZAEVQOshaM/8XYe1UfUTaYv+y7ZjL0OuQOeJ
         h9wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWoaKfql/v7ZSRmbBm2wYSm8G0lTLEYVrLrNEQi8vsjF0XcIJtc
	mPhBM82u8L4ECKxAz+xjB0s=
X-Google-Smtp-Source: APXvYqxubuYF/B3CtQZYwUdVaLrfMd22Me/08tfii6AFM18w4KhCSo8RN5AsVjBobJcEXiLm24qsBg==
X-Received: by 2002:a50:f781:: with SMTP id h1mr75713682edn.240.1564008337982;
        Wed, 24 Jul 2019 15:45:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:420c:: with SMTP id oh20ls9130998ejb.12.gmail; Wed,
 24 Jul 2019 15:45:37 -0700 (PDT)
X-Received: by 2002:a17:906:3144:: with SMTP id e4mr26725066eje.31.1564008337420;
        Wed, 24 Jul 2019 15:45:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564008337; cv=none;
        d=google.com; s=arc-20160816;
        b=NzSW84PEdFGl0IdfvofGNWqQvfN5BLCW0PjRqOPhGieNLeeVtqB9uVcxxLEquO0SDx
         zl80QZoOo0HBbdXV75aG3RyuuP1z+wFwzlfTrMsCp7NfRB90aKLuRGly3KJPpvOzQZNn
         FAZ3OUGNo/CaMnGQ66bZydB+5pipNDPX1DqmExqabcGkfgJbsopF+QwLus6ecCEhLoxl
         2OWByQciu0DIxATIN/xQlAv1X18Msnu8PuZreHbPUeLqlyNH71VpxdK2fkZvirYfsmKo
         JFWNcptFFpL5iUqnHEqoweM3Mh4goIHzno+Bv+vNfjaWvWQ+pGmqfIRoKuVEJiR5VXvW
         Bx2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=XrNDYOZsB0D7c9QlyUrmNQuE+J1dIh6bo6gnH+d9kQ0=;
        b=o2pNvg6XBoIYYZDH80O5FHkEbl4OH61wo1ca3shQTdb7Lmmsdkn6kwq4NB58jcyf1w
         rzXLAGLgD7K3A/Pt9kLdcNot/UPk2NOJKbbT4e9dBe0Rr9uVaNoGKnjS40cg5OGq02xM
         vC8C2vFh8eRoOk9P1luaebCEmkvfm//mIX4OHVRJSPuSYyoN0qifz911MZE4mt9XhKw7
         rd+4luX0bzLJWJPI98DdbreYztVd5JQSYgilqwHKMFMBBuMj/SAEecMWyA4DLjjLRZdV
         mn8YOSzppL7v7eldpY6gp7l2akVXKXsprG27g+huYgEhzA3abQOQVlLPn5AZhRsJp4IC
         wkwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id jz14si2077475ejb.0.2019.07.24.15.45.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 15:45:37 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 25F0A1543C8CB;
	Wed, 24 Jul 2019 15:45:35 -0700 (PDT)
Date: Wed, 24 Jul 2019 15:45:34 -0700 (PDT)
Message-Id: <20190724.154534.1347804220870523293.davem@davemloft.net>
To: arnd@arndb.de
Cc: pshelar@ovn.org, xiangxia.m.yue@gmail.com, johannes.berg@intel.com,
 kjlu@umn.edu, netdev@vger.kernel.org, dev@openvswitch.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ovs: datapath: hide clang frame-overflow warnings
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190722150018.1156794-1-arnd@arndb.de>
References: <20190722150018.1156794-1-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Wed, 24 Jul 2019 15:45:35 -0700 (PDT)
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
Date: Mon, 22 Jul 2019 17:00:01 +0200

> Some functions in the datapath code are factored out so that each
> one has a stack frame smaller than 1024 bytes with gcc. However,
> when compiling with clang, the functions are inlined more aggressively
> and combined again so we get
> 
> net/openvswitch/datapath.c:1124:12: error: stack frame size of 1528 bytes in function 'ovs_flow_cmd_set' [-Werror,-Wframe-larger-than=]
> 
> Marking both get_flow_actions() and ovs_nla_init_match_and_action()
> as 'noinline_for_stack' gives us the same behavior that we see with
> gcc, and no warning. Note that this does not mean we actually use
> less stack, as the functions call each other, and we still get
> three copies of the large 'struct sw_flow_key' type on the stack.
> 
> The comment tells us that this was previously considered safe,
> presumably since the netlink parsing functions are called with
> a known backchain that does not also use a lot of stack space.
> 
> Fixes: 9cc9a5cb176c ("datapath: Avoid using stack larger than 1024.")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied, thanks Arnd.
