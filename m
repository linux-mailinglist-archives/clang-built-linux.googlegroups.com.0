Return-Path: <clang-built-linux+bncBAABBFEW3XWQKGQEQVAUU6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC2DE79AB
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 21:09:57 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id x17sf10711396ill.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 13:09:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572293396; cv=pass;
        d=google.com; s=arc-20160816;
        b=X/gzB+YJ3C9oUIuvLI3We9IjaoDP9dFsfkOfkTp6fb6pdyY8Cerkg3/LePJTygOI52
         /ZsRBgiWpeZr9tQFzHnK08Qx5ptFheSrW5X0VyG01hAzh/8RvK/czAFiDR/1sBfupBLN
         ivfNtJLuB7zllSzz5f5JrUt9H6AqGBXK6Z+qgZtg9V1n80fdzQYSKWjp3dSoPz2OE11j
         d6MstQN4NhUaEon9656lz4IXCrWuH2VZ9qna4KqLmYztdMPgr+TwdWYzMNb2ZcsOjNsI
         hShySVLWwYNG5bj+H+lRHIjvHoEy7qqIug46OtV7sJ3TV3aU59NkJ71MpPIUokOV64ki
         7TSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=nkSmwKQ9bzetLyEYizKCpxP/uSBZ6jT3QCXFtop8O1M=;
        b=Ym0tJlX/A6UCgUgMWnk1oTgxUvLRwtPybeERhKBH6HHf2gKfNd5YtDtWFPrZEC+GLn
         SMFwerzuWOqA5/y8B/RcxPVJPLJXVpXP2vVwcw60jMnffuVHX8MtgdGVegnBs4j4OzQo
         RnSoBLNxt0xXwFKbsOgG3F5iSFoSYAnUpKwQ2ia1BtaqXF09ay2dz+Efq52HQd2y0p1d
         FQu6XA/ufHD15jd7cYmlv1tDHaNNwjwViaB+yaxnzzrR7NsJ50xOY7w+oGNNqlIdLcju
         rgJChMmCTHRvC46QkVUvJ+ai/jiHfH/VucgwUZTDrNawmjHi0ZpLN773B1mP7bG9Zzs2
         qRLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=YcdA17Z8;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=mCdCEyDr;
       spf=pass (google.com: domain of bcain@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=bcain@codeaurora.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dmarc-filter:reply-to:from:to:cc:references:in-reply-to
         :subject:date:message-id:mime-version:thread-index:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nkSmwKQ9bzetLyEYizKCpxP/uSBZ6jT3QCXFtop8O1M=;
        b=l3qPcww5Rak9oFowSB8pY67aE0gIA33BSC/Xi+t+Y1CgNFI3KxQYjV91Q1ZK/lacwV
         23LpiD4fcccY5KffZiuLw+mQX7TRX94HLZMvhwfpz97hrL1qUjrsQPFd2brtSa2VOjbn
         pRVnzAAoXPYSNVAv+cRO1DDB3iw/4ZrqWsdaIz+zMddbpvthUNRF+61va7kn6xAfu6Gu
         QRW6HG2gtLjBckL8GKxuzHkmh1j6v3PiHLsnFYLCn28nTZgy9auh0xY7KyZ4SJnAedsT
         dK6yUcNaLxauSgk2xVooybyvugf82q9z7+UI2Ivy32tMF81RBCTJuNgReH6xKXYGhKUm
         NiRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nkSmwKQ9bzetLyEYizKCpxP/uSBZ6jT3QCXFtop8O1M=;
        b=mS1iYzChLZCqgWhDTzeu3HwkoO1MjKd9XhT+dE8jOUlVm6hKF60bS5XEoKABZr0WjX
         atydAN7236i+Krk3OErX2oOgYP8u9Xi1dPkM4YUrX09tBWW96uKDf8aAZkl2oBsWahlc
         N2oeqIIxjoh5k5bWKur7dAVXTCvbGzE3AdA2+OGkkN9DNfhISPBG4Diqg/xCjFktX0Of
         zvzGUkK31gjxpwmv+G2M7bt44MRem25pAVSaS1FcpfCrq1MkK8w1bcANgE71EaeQInGD
         W4caj7zlkk43xi2PGg9z14brOa8QAZMqc3EPEpd65peRoK160TKb606JHX7P289nfuKk
         eGXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVn3R32uWYDcoV7mOKnmYB9amSq6f9mmotiSdMymQ+4cNrnW5ea
	9qpLJZnpu3NX8VTtmc0w8Uc=
X-Google-Smtp-Source: APXvYqxddKyJy8GNq7ahct1MBiyvzFOQuMtPrLKgR6eGp4anaZSD5XJ1ShXjXLPwMd5hFAGEBPD+aA==
X-Received: by 2002:a92:5d97:: with SMTP id e23mr21368758ilg.24.1572293396314;
        Mon, 28 Oct 2019 13:09:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4781:: with SMTP id e1ls3202854ilk.10.gmail; Mon, 28 Oct
 2019 13:09:55 -0700 (PDT)
X-Received: by 2002:a92:4514:: with SMTP id s20mr23278579ila.232.1572293395983;
        Mon, 28 Oct 2019 13:09:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572293395; cv=none;
        d=google.com; s=arc-20160816;
        b=lr7klz783CkpYxriHsUiltO72AvD21jZAg9NQsFUa9CJjbOSPNQb8V/MimvB+HiSaf
         2tqcHW/lxO3ENXBcZn+gj4cHC8Vlq5rjGlXc8kVtoP25WFkBOUguB0j2axUKRAe3F0uE
         uhx0EgDk/M3yumnNsK6Xl9+P1EvnQ153cDxlpPf7+Xp3XBHGKQfmtL6yIxT09CVIr+nx
         xsOo4qjLS5rPXAsIxhX6PVBpJi3moimsgZzyYUkb2MiWlm5CewsN2dJfzK4MEjFhHR2H
         GwY03WVsBoxDsnjB4p1+tG2bTC/OVSunCly7bNh8+XlRURShBeyoUPTV0vmhthPDxIGc
         Hb4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:dkim-signature:dkim-signature;
        bh=Den5HckjWVd4B5x4OAIo3DsOSqa8IgNXFKz/9MsO0QQ=;
        b=Q9tiByD7J+KYZalnVj4nNsi8GCFBQjfw9Nc/XQe5v8Ym9smcyh0pjSLqHnWkvbYYpe
         cI1xljHcmyb2/NPQty0tjZ7o65yryZqT7dDbm6LbQ1a855ZxisnJYYHJ3ByoXjI6YqVW
         a571trLJB3zK/DKsRmYNtDp6/FgqcDrJR6CCMXOsoDJ/3RCeRUHl4RNtkE1CcSAA8Aki
         XiRKmjTsKfmCuwcAjUmQ4Yw6S6dJQTcxoH9Uxyn03+0JjrOMKLaWRBAJ1VXPm2Pyhi+i
         ah3j/dSICLp7Pg7Hf1Jz3gRkROjO2XOydjjgZ6hT3h4pUJQno9xFBacOx6ScPQSaxQCi
         lCyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=YcdA17Z8;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=mCdCEyDr;
       spf=pass (google.com: domain of bcain@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=bcain@codeaurora.org
Received: from smtp.codeaurora.org (smtp.codeaurora.org. [198.145.29.96])
        by gmr-mx.google.com with ESMTPS id b74si101823ilb.1.2019.10.28.13.09.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 13:09:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of bcain@codeaurora.org designates 198.145.29.96 as permitted sender) client-ip=198.145.29.96;
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
	id 42597609DD; Mon, 28 Oct 2019 20:09:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
	version=3.4.0
Received: from BCAIN (i-global254.qualcomm.com [199.106.103.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain@codeaurora.org)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id A46AB60274;
	Mon, 28 Oct 2019 20:09:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A46AB60274
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: "'Sid Manning'" <sidneym@quicinc.com>,
	"'Allison Randal'" <allison@lohutok.net>,
	"'Greg Kroah-Hartman'" <gregkh@linuxfoundation.org>,
	"'Richard Fontana'" <rfontana@redhat.com>,
	"'Thomas Gleixner'" <tglx@linutronix.de>,
	<linux-hexagon@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
References: <20191028155722.23419-1-ndesaulniers@google.com>
In-Reply-To: <20191028155722.23419-1-ndesaulniers@google.com>
Subject: RE: [PATCH] hexagon: work around compiler crash
Date: Mon, 28 Oct 2019 15:09:52 -0500
Message-ID: <002301d58dcb$a9ffaa80$fdfeff80$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKUlOT6xDYs3glgy2B+THlWPmKFrqXybLvA
Content-Language: en-us
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@codeaurora.org header.s=default header.b=YcdA17Z8;       dkim=pass
 header.i=@codeaurora.org header.s=default header.b=mCdCEyDr;       spf=pass
 (google.com: domain of bcain@codeaurora.org designates 198.145.29.96 as
 permitted sender) smtp.mailfrom=bcain@codeaurora.org
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

> -----Original Message-----
> From: linux-hexagon-owner@vger.kernel.org <linux-hexagon-
> owner@vger.kernel.org> On Behalf Of Nick Desaulniers
...
> Subject: [PATCH] hexagon: work around compiler crash
> 
> Clang cannot translate the string "r30" into a valid register yet.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/755
> Suggested-by: Sid Manning <sidneym@quicinc.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

LGTM.  Thanks, Nick.

Reviewed-by: Brian Cain <bcain@codeaurora.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/002301d58dcb%24a9ffaa80%24fdfeff80%24%40codeaurora.org.
