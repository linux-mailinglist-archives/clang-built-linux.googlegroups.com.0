Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBM4N6TZQKGQE6RQX22Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3BA1947CA
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 20:47:00 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id 77sf2806681uaj.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 12:47:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585252019; cv=pass;
        d=google.com; s=arc-20160816;
        b=HXlvD1mXLMUxMLWwDrt654Xj6GWWdi+npO4w8i7wVo27N/89RhouOyo2P6Lbi+ewTM
         CMyXAg+mx/W7G4/VkpvS6Fi+5wOLk8U0+o/Qvrgb4CWQcpE//j1E6qiBMH9+1sDx63Rd
         xvd+INmFZQQTk1wTsbZhAR/Ay7bDyQKUaC44lnax4xAdypj5iiIA36oVry/cnCzy7ZJ+
         Q/YRKc5YWR1hQacNK9YbuFZISXBg8LTkZFNDssf6yiEm8hHInPuclzqtB20/vcBnVF+M
         bANVf2YcMOApq8x3YnzN54MD/55JQXbOD4v2/gZUa7O3at9j30wZfaMyI9euFBtOCE3e
         6sRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=hxPr3BBnyU8hwuFDfuQeNIiUyYU6pmwlBlR6gKcjSQo=;
        b=yUUpcacNPfvVARTENZt+U3Y0wxEA4ggNgdbU+XsSuGmkllcWCNE45OacGT2JXsNx1i
         KwJ0xVhQv9lha9RI8LxikTNP8pS3HKQfD913n/ljbzhvF6HASzqDSK9F2Jeds00SV/lq
         o6VxFlQos6h4yPi8k0vmxsrMLCb7T3JZMEtgwZ7new+YCD+8IRbkwM/XyS9+GnmFcjSY
         vYwtVMUCMUVTwoI7PVatkt6nuBNd64DaSKZY3YQ5v8IJCIaGpbJYbS0JZDBdMkH0S5eQ
         Vb9DVRepzhCPfm+1dVnGIXXg31qp9hzueq6/HDKpB09TCv8GWLx/BFMq9iWNeQ1Iouwh
         8U2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l2x1GyZl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hxPr3BBnyU8hwuFDfuQeNIiUyYU6pmwlBlR6gKcjSQo=;
        b=tb6G1Qp23y4GtlfuRQ35TzbQ1PufUC7/3WnIDzo6ymuEm4Ty45f7nUj/X/dqFCfDDv
         CAKFZhDa1PLNxk4ulwBfVfeDsf/u+2BV+P5TWeZVHziAf7Ie6TXBVn+B5OU0IoePc0f+
         SIjTVRIEU518bzl7mNEjuo0bwR9sjWzF8Ddo6iwiY3J0k3MUx6n7vBEnGef5bDIt13pY
         6QLNr+zpMnF33ycwvzjjyCLg2cxBEaDCliMHdFmIIPG2//DIaQb58VuRT0UmVRfwAB79
         d7c0rRb9YtElbiax4UCx2OoXxSPWhTbbuhNSVorfrJWlm5vrGmiFImF/TQWmsuaF/WIe
         Pffg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hxPr3BBnyU8hwuFDfuQeNIiUyYU6pmwlBlR6gKcjSQo=;
        b=Z++ZaRmYS7T+j1H9D8thJtwEoa5Nk5ph+SAZEcE/UuxYS4JxVQwERIga2CIOCQkaWC
         akxZH1TUZsJMweTyT4zz4PScIZItS6pJQuF9Bqy55IULtMmUJwQ9+dYOGS3oPhvgnAut
         w9XNCO4B6ce70YbYmveWueqnuoFi6YGSF9B4r+3IPfL/EFbvscnJOgI6lCMGwRFhrk2G
         80vWhs2UBBoUGZa9Q8hq0vuUZayNRrH60SX94V9WFo3FMXJYV/6JIM743/LtjU01qcwI
         o2FLEEMpPJ1q8I5rxUiKpILOvT25v4UICSm282Ul8YGYIPhnzXUmbrtwJN2nr6u0JKHo
         zzng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hxPr3BBnyU8hwuFDfuQeNIiUyYU6pmwlBlR6gKcjSQo=;
        b=dNxeXvqBy0iAZYyUcUSr38JcoLy6aSJBdo4hrm3I/NJ4mw6INhx0m9sADQ3smO1jxG
         oblY5/1MdSkimEUypBalH10KeUdN9/fXlySBdZOwcyIIr4H05pf7LaoiKJJEpDbVCP6d
         ymhwv+VMh4HbM38Fwa/Mj28e0ZjoOwK/rovrsdzWR7uQKxcacWb3XVqAotDfGwUKHlxI
         EiyCndAi89v2jYrS4LB27h1hdNv0BgDehNk1GGipuOXBEb2qE6v/cPa+A6Aznk53klTO
         DI0qS1rAZQE/mnz6/AruwnWaeQ+4XIIse+kE2rfS6DwoCLd2hL5qbJ29sdy2EutbVr4U
         RXlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2wABEG0M23zW/q3oiqcqMtGf3MT7Z8DBbjQ3rAUXpz9A8BjzYP
	e5QjT1xCh8c0qB+jc3IPyOQ=
X-Google-Smtp-Source: ADFU+vuL6AyHurA4YBwoZJy5R3g20oNsH6w/ZgzGCOsggPJDEWL3TvEArJGs+ALh2InTlx32OGwD6g==
X-Received: by 2002:a67:4c5:: with SMTP id 188mr8296781vse.43.1585252019165;
        Thu, 26 Mar 2020 12:46:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2096:: with SMTP id g144ls382421vkg.7.gmail; Thu, 26 Mar
 2020 12:46:57 -0700 (PDT)
X-Received: by 2002:a1f:6046:: with SMTP id u67mr8255725vkb.68.1585252017231;
        Thu, 26 Mar 2020 12:46:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585252017; cv=none;
        d=google.com; s=arc-20160816;
        b=iiiULyKgsCzNVezXWKi31RjSBjSnYVsfoC3p3dJ8Kesx7SICxAjV7hwjPDka04JdpC
         jqttgwfmnxoG6AdxQS35Vx+ccSNAqzyKPAjrEfzwNnlm2z1ISAdJPDj6jua/PXFO9wPG
         GL7r/D7ZKn4b2d3jhJTsXjrIfUKeZLGuJnA3g+vBoxHTSbXoq8wrmaM0Oi1CE6aKQMQU
         yc3Wl3Gskoy3SJssGBi1aGrtj2G4CsfwsEKDfQRUrOQTHDt8v+yr0S8no/xQTkT+sRZ4
         MiTnthDsYB32BB5ifw3wGbigQLMzB4w/ybBcRiHbaE3C1afMc1aIPaqclSUc7xvjPCor
         EczA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ee5qM+UNNhRdG2dNaTXRGtyqNayzs63lsgczoaNreJM=;
        b=fgbug3y3UT7U1pqJAp7GIPCwWPt3RisL1lZvlWlil6r9MOzGmLkdc1A8IqotiCUIC4
         FpAYB/+cuR6TTy6WGXkmR/EQUWqNZLCkUlJ3NZSsQJLOaGHQZMdXaWXWVN5taniPaQ6m
         HxrwSUDXicRS/Ac4jvIQ9B64JPgUBncK+zfUXoBC4J5Nt6odlOYqx0dCEXWdC41SH9yi
         zAZvEIS3CaWSv2lHR+77lVnGlqaU1zY4SqnTWztsb564k1TREut+oEoTva4ngzjZb5p5
         NPyc+WNciXHC6/D/Och7j5R5GrKiFiHqGOiRVKkgjEQYLT0Z5+o3tWBAj8K+1Cb0pVXv
         DkrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l2x1GyZl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id h6si311200vko.4.2020.03.26.12.46.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 12:46:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id j16so7286041otl.1
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 12:46:57 -0700 (PDT)
X-Received: by 2002:a05:6830:1610:: with SMTP id g16mr7415044otr.358.1585252016634;
        Thu, 26 Mar 2020 12:46:56 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z14sm867885oia.23.2020.03.26.12.46.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Mar 2020 12:46:55 -0700 (PDT)
Date: Thu, 26 Mar 2020 12:46:52 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Ingo Molnar <mingo@redhat.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] tracing: Use address-of operator on section symbols
Message-ID: <20200326194652.GA29213@ubuntu-m2-xlarge-x86>
References: <20200220051011.26113-1-natechancellor@gmail.com>
 <20200319020004.GB8292@ubuntu-m2-xlarge-x86>
 <20200319103312.070b4246@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200319103312.070b4246@gandalf.local.home>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=l2x1GyZl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Mar 19, 2020 at 10:33:12AM -0400, Steven Rostedt wrote:
> On Wed, 18 Mar 2020 19:00:04 -0700
> Nathan Chancellor <natechancellor@gmail.com> wrote:
> 
> > Gentle ping for review/acceptance.
> 
> Hmm, my local patchwork had this patch rejected. I'll go and apply it, run
> some tests and see if it works. Perhaps I meant to reject v1 and
> accidentally rejected v2 :-/
> 
> Thanks for the ping!
> 
> -- Steve

Hi Steve,

Did you ever get around to running any tests? If so, were there any
issues? This warning is one of two remaining across several different
configurations so I sent the patch to turn on the warning and I want
to make sure this gets picked up at some point:

https://lore.kernel.org/lkml/20200326194155.29107-1-natechancellor@gmail.com/

If you have not had time, totally fine, I just want to make sure it does
not fall through the cracks again :)

Thank you,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326194652.GA29213%40ubuntu-m2-xlarge-x86.
