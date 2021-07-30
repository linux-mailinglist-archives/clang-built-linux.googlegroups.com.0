Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZNRRWEAMGQEXAHXXVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id D07DF3DB0B7
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 03:41:58 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id s12-20020ad4446c0000b029033a9344451csf860569qvt.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 18:41:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627609317; cv=pass;
        d=google.com; s=arc-20160816;
        b=b4A2VPDWqgfqULsaeqm9fjzytS/Dy9gpPgcgH1yv7cbboDEWuQlLTFXo3kpRP4HPps
         XZC2JxLMeRIGsLc63UZkgy2dh5hT7BgkmqEMKDFUCGzHzPYE6oIwr+U9nv/YMLQQ6nC5
         ddHigFg8Q6yKOVHjlNRdtjQdeIfa3JI/hachQ1OlgT7tAToLWKOX8OJcItdYT3tQciA3
         J6VjaqrO+1W/WXhpMHp6MEEL02NHff2E/Ifp1hoEMFFIyiVS40ZjEUfN5L7bDNx5D+2T
         RRH9+Qc4IXCFui4QRA2g/khc0OnoSSE/eaF7n7MJg1l9ZO2eXdbIde67HlLoEOICpKkO
         Kuzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YjChnxfmWrGcW9eNgCUzFO8JQAKqrUM7ARLY9qwqZJM=;
        b=RbCd4f2U3eY1LySyoCKtIUyjEUcvnJPBhzsdFkI+qbtE3V6VOvz1648qOuVEcuihec
         wL9id5pVDaPfGQ4xr5N8F4m6rR9RpEiFkl5p4UIIh9PRQ9EH259jkIZCQu0D45cESKnF
         sulye+qVDOuJBZHbOvzFHLuRpBWjNMZCbqLcERHzZr7RIN7GFk7ag2+Feegjs1XtXGmF
         WPDKKqe2vsQA51NTD9XBF3wMItm0IpB5iy88JqnLSvtZiRXXUPWX31ZWi6PfuGnPuzYZ
         JPKZCzbc9VtGvNU0UyMveHX412eb2AqnJN6+y4LlhQQ/jC0XYWb7+cRiwvOsbtHjYMYt
         qx6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ijAtp7Bb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YjChnxfmWrGcW9eNgCUzFO8JQAKqrUM7ARLY9qwqZJM=;
        b=EIXybj35g8IaNz7j1Ey6S+JcfnzmuSJRqJEaobA1C5BgdVVb72fu4RtqG71Cr2S54T
         EuT7HW24Em/HzTTB8bWQ6n7JCXvgQntx6eQLPPpwTZomZvBRwtMxuf+HAZahepr4NwB7
         Q5x6jefy2O0Qyb2V857VA17Vxg3EsCdDtuSW1xmRo15b+4CE6luFl7Fyey9UDob9ihlR
         DegTla/P5fgGnqxEH3GWS4b2emVgfHYIAFs8D3mz8dFl7lJgX+ReDd5pTC2C1111YJ6x
         /lUmyI+eIIPNs5unJXRbY45u0R7oejtF2YOeb3/VbvnEOx/V8nAFH3xaTV0my5KCUSj3
         Vyxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YjChnxfmWrGcW9eNgCUzFO8JQAKqrUM7ARLY9qwqZJM=;
        b=bqyvIsv5hmbQwFGowPjJ4nAACCr+sSrmxf88XVx32DuC5Vd84rMHig8ECI7m/wcCXP
         wrlzBKAeF9uWADVfTG3N8qdirArLnOKRXICjWRoJYAAdoZjaoWWw9Y791/6WnrPLaU3R
         g7UR+89NyuDuuMUqD1UER3V+GGtFYtccg2JoX3zEyWbqgaPxQuBgEPiGrLCKnd8315m9
         TGZwc1TzjFdT8hHtKRPq/lTCM+V0HsMvEVXDh6liztrXDPpuOo+fqAEoTOEmWFd7wozz
         5vY2CvWfixZNT114LCCBUZINSn3hB6OtV8CRK2gtXDI+OyNBDv2skswS/IdOzJUh2aDv
         s1tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530a1rWLEJaVS7TTV2wPgyLztsb/Or3E1dyWJThPsMUbTpotkUZv
	vkeYTWSXwQdDbwoayGKvdro=
X-Google-Smtp-Source: ABdhPJz3Y7rP99tacg1LOmHPWJuy0eT6+yNeEb8Hz5myrH+YjKZrX1nQvUXFIQehGalMcDfpBAoOfg==
X-Received: by 2002:a0c:e6cc:: with SMTP id l12mr240320qvn.48.1627609317559;
        Thu, 29 Jul 2021 18:41:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1002:: with SMTP id z2ls60779qti.0.gmail; Thu, 29 Jul
 2021 18:41:57 -0700 (PDT)
X-Received: by 2002:ac8:521a:: with SMTP id r26mr265083qtn.361.1627609317127;
        Thu, 29 Jul 2021 18:41:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627609317; cv=none;
        d=google.com; s=arc-20160816;
        b=sNDPZhzGbWcPby/Bf5RsrDN09GWGesjGL8FFQuqQvdz3jBxZBJiO/IxtAnOXETdVwp
         pbxpy7TyZKm+1IfRXcD2+gTgG7cAQMqGtdpSNt/s+f43bmLbgpI2OzGTPiiyxPqyG8cZ
         U+NTYtOK8z+cTMxof12UY/QjmLYI+NjR4FJ4w1VFlO31mAiMa2AZq+Fyuitn1AWIKNDF
         X53jBv/MggXrXk736xlshH8ETjk2QbaK/NP//S+xErm26MHQyBcekq9oSLhSn30sVFIf
         Ztc1NY9J7L+V5WEHwIWUWZpcrlHg33NIwSXI3eEw+UrEghMr95rbmgC/CEhaeJoJ3CM2
         RXpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=z2Wamgmh73Y+Ncu8fAmHIQj7M7ZAYEMLRlTXvopvkv0=;
        b=IOauai3X1ajFm8XoTXgIVw4WWtrjUV5b7WspeU9zv9AzPeO/RHytQEkDSCj2W78tkQ
         2NqNRAHSkDaDklvE/XegiwW6R7nOnjD4URpXUW/+svCVBE3Qz0kxUj1ZgVx2gOnLqjWC
         G2LXxwno/jtj6wuZmkCMQY0guPyjM1I1GFoto4neD9l5SBSPPfkk+9bILicIpmGJTLnU
         QMbdi2n4kejgWz23LD45+ci4rANa1qI1zP+hNv2HDwo2/3shXWfqc6yeVtDN4YYBVw79
         pCNa564DmdyB637M54nIpT5ETtvx8J8kawc0XOU5HlMuRPTPI8XnLzWuJTsMJ6HR38le
         5JyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ijAtp7Bb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id bj24si10372qkb.6.2021.07.29.18.41.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 18:41:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id e21so9151013pla.5
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 18:41:57 -0700 (PDT)
X-Received: by 2002:a05:6a00:ac8:b029:320:a6bb:880d with SMTP id c8-20020a056a000ac8b0290320a6bb880dmr239521pfl.41.1627609316347;
        Thu, 29 Jul 2021 18:41:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s25sm97149pgv.87.2021.07.29.18.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 18:41:55 -0700 (PDT)
Date: Thu, 29 Jul 2021 18:41:54 -0700
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 62/64] netlink: Avoid false-positive memcpy() warning
Message-ID: <202107291839.6AEFA1E8@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-63-keescook@chromium.org>
 <YQDv+oG7ok0T1L+r@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YQDv+oG7ok0T1L+r@kroah.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ijAtp7Bb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Jul 28, 2021 at 07:49:46AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Jul 27, 2021 at 01:58:53PM -0700, Kees Cook wrote:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memcpy(), memmove(), and memset(), avoid
> > intentionally writing across neighboring fields.
> > 
> > Add a flexible array member to mark the end of struct nlmsghdr, and
> > split the memcpy() to avoid false positive memcpy() warning:
> > 
> > memcpy: detected field-spanning write (size 32) of single field (size 16)
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  include/uapi/linux/netlink.h | 1 +
> >  net/netlink/af_netlink.c     | 4 +++-
> >  2 files changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/include/uapi/linux/netlink.h b/include/uapi/linux/netlink.h
> > index 4c0cde075c27..ddeaa748df5e 100644
> > --- a/include/uapi/linux/netlink.h
> > +++ b/include/uapi/linux/netlink.h
> > @@ -47,6 +47,7 @@ struct nlmsghdr {
> >  	__u16		nlmsg_flags;	/* Additional flags */
> >  	__u32		nlmsg_seq;	/* Sequence number */
> >  	__u32		nlmsg_pid;	/* Sending process port ID */
> > +	__u8		contents[];
> 
> Is this ok to change a public, userspace visable, structure?
> 
> Nothing breaks?

It really shouldn't break anything. Adding a flex array doesn't change
the size. And with Rasmus's suggestion (naming it "nlmsg_content") it
should be safe against weird global macro collisions, etc.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107291839.6AEFA1E8%40keescook.
