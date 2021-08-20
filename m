Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBL5B76EAMGQEYTTUHQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 3361F3F3050
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 17:56:33 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id k11-20020a6568cb0000b029023d00ca7bbcsf5520898pgt.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 08:56:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629474992; cv=pass;
        d=google.com; s=arc-20160816;
        b=ml7ojL39I5MGoH5Hme+n4cO53Z9O1qTvb3H9rX8rSXBmO7bSI8gOVWyM6P1PF9G89T
         TMeOcvjK3EKBPFXtSTGRo/1dvMjQ4c0NOaHx798cOlFOev85nIyLwdlm/qi5DS4O6D21
         hPqZ93TvBVK8g/QsKxR+36UmHPJWEHpggwvcB+5ycEi20aaPptzvC37XkW0HsVsCsz+v
         wmizv2IpBDiDxQaRlW0PHwqEap4G7MBbox1rdmZeSnK+8REtgS+v8rKj0Gyiu/1DWScl
         8wdCHt2njFKwzegu7ax9U8jneeDy+kC7kUVlb2G4iEALLlSwYgXHtENyLS41fUjHOurs
         r+Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oixxDuDk1tQ0wMBJpdwo6cKidf1vp0kbZYShs0syzCA=;
        b=AnH91vt7zv1vALChtblVaagLmz8U1CTqCYhRCKGAhcoXoGToq23ZQzQUfmyYp+W0f1
         3uPLChelNHCz38cLj2EkxSXRGcQrX3XnYFS4MdAEhtF24B8DAMIbFNjFyzwsOJBNR84Y
         T1LrL2niAQhP17qE0xIP1rh7GFvbxWe6kdOTFA/yvTDkZTMhWn4tR39f+9gIoq01/CoE
         cHUWQnVUlon5OHBWbUZs9r1pC60AGIGI7V43Fo9LkK/H2ShrACziLegzdDhDru3Nzy/t
         z/HPbQwt6L3tkCKIPiG2ece3km/0STesAGdW4qXjfGSVLhAw9D0/jxZifykdsgZ1hrWV
         yT8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mWy+dsfz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oixxDuDk1tQ0wMBJpdwo6cKidf1vp0kbZYShs0syzCA=;
        b=CWohHPPzWPt0o8A4iNpp8i9LCalqM2FdCmCMt5dE938XzyF79qsYLAb8m8BaMq5Fg3
         DEro15ZobKqQwb+JlMLB963qxFA1uyXmldq2nSziuvvs6jPk13GNxE4J24s/OUW8UGZH
         nHUCb9w0oNJDVi6heXmUTOiV2qhcQOacUjRCXLuw3furc5qNVVv3kbzEFwesWSF+TkNl
         DxhqgFpI0jpAurEWd8+bfmhJ8QccmbArKMyekdaR5b2lKHeo0BhA6eWY8AdumT2kVqPE
         agO6Mkg85a2LlB1+I/PcGLKFHhpyIV5AYNLGaNaOWyEYW0eIjGZ0QLewZBUdk0AkEglo
         069g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oixxDuDk1tQ0wMBJpdwo6cKidf1vp0kbZYShs0syzCA=;
        b=ZaR2MCQkLBv+Dp8W/tusQn8QwIFA7Dq/xACTBVRN6RVbiShz5GSLTqhWKbDShvWQUQ
         JrmxUvZIDUIGpynaclcpNcEpdeLEEn3tBUtujLHKrWpOwakm3Zj7lLjBt/inGLXBH4Hg
         bzpb196KwqF0ZXj+iYBPdD3ZnKArjxRyCJppSzEdoFXfrxYV/8triNINjTRD3YHaWcbG
         Fiv8KBMyKOD/94Fn6BHwlJmuRszafSK/j7hAJd4YoNqssoPbyJkyzvIgQNhRa3t0LLgG
         N4wNzeNcg0pAbsM7KEZEQ1HcPc/JzSWWSgHAuOM2uzsECopZ7wdZnQe8DfLM0g/XzXhU
         qbGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533SQzss3Fw5GZjHb2hUYEx8dmY4hhTu6E3897ffr7SuXMAuLLRT
	M6OYnmkPw3uZnc/e+a6MG0o=
X-Google-Smtp-Source: ABdhPJzfZ0k3GEbj2l+nf8w68cwcRUg7FaRnwkZGVcq3w5DSmfyn0gIGRCUS9ipCxaiA7dlbakmUUA==
X-Received: by 2002:a17:902:9b87:b029:12c:c3ed:8a1d with SMTP id y7-20020a1709029b87b029012cc3ed8a1dmr16781231plp.7.1629474991921;
        Fri, 20 Aug 2021 08:56:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls4780661plj.2.gmail; Fri, 20
 Aug 2021 08:56:31 -0700 (PDT)
X-Received: by 2002:a17:903:32c3:b0:12d:cdc8:9460 with SMTP id i3-20020a17090332c300b0012dcdc89460mr17067571plr.28.1629474991353;
        Fri, 20 Aug 2021 08:56:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629474991; cv=none;
        d=google.com; s=arc-20160816;
        b=y0uapNHT/OFFneaWSNtgLZE3P700/AZ4btAJvxEw+CgHzebvKA2Losy/jf8kNMs34P
         0plHFCmAdOaItH3euSWILflFJjIXMSBpMYjLsrIwvzSPubHgqwgWiB41o2DKj69WfZSl
         UJ7YHuofiexnwMeB18yjxScDDLcQf8REWKmhUBQfTOXkWVJTfUR1ACpZvV7mbNthDfVW
         XWi6nj9X5Yv8fZGNFgUzYGf/Rg8M3/s5hj2P1sfy74DM3seJifYA12LxL3/zIlEYRcUq
         v9trVUBzQO9jPb06sudDYNN++C32doPsgXm7l669NZtFZbY9S/G/oXHOfKA5m5pi24Ow
         Vk5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=C3a7vVBUf0KW7MXt4FnTeXqGlzkeA3TVHAyOaxNZlwQ=;
        b=ih46l5KPrmrX7iir/Dxj4J7/lnQ7ajXdZ2NO84M4j6LvO5bt28KJP5xE3B6CN5lXUo
         qYKAwyLLOO/5zjbebdiXhgonyBUEps6gFMOBFyC5HnNIMwM6Cx9XP48DU/0/ASsdMHee
         n/Eggs0TX9dRPjH5WUQ9xJzJvDXn1l+1n7XbRFG4Ileki5y2cpvT9e9BuwCZQa7MMVph
         WeYROesV/nJL/8SfswMZ+H9CV8myrk+Pq2sJwAY1K9rDADtLj03bXpxASJtCRAd6uDIo
         SAXtxqPvwuoOudEKaGd5aLUIhC6YYpUtoqWL9RJkgQGirk+H74ReWfA0COrQTo4a9mda
         xW6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mWy+dsfz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id r14si592440pgv.3.2021.08.20.08.56.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 08:56:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id n5so7585852pjt.4
        for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 08:56:31 -0700 (PDT)
X-Received: by 2002:a17:902:f704:b029:11a:cdee:490 with SMTP id h4-20020a170902f704b029011acdee0490mr17049722plo.37.1629474990741;
        Fri, 20 Aug 2021 08:56:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 21sm7304926pfh.103.2021.08.20.08.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 08:56:30 -0700 (PDT)
Date: Fri, 20 Aug 2021 08:56:29 -0700
From: Kees Cook <keescook@chromium.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: linux-kernel@vger.kernel.org, Leon Romanovsky <leon@kernel.org>,
	Doug Ledford <dledford@redhat.com>, linux-rdma@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 56/63] RDMA/mlx5: Use struct_group() to zero struct
 mlx5_ib_mr
Message-ID: <202108200856.E0E8711CB@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-57-keescook@chromium.org>
 <20210819122716.GP543798@ziepe.ca>
 <202108190916.7CC455DA@keescook>
 <20210819164757.GS543798@ziepe.ca>
 <202108191106.1956C05A@keescook>
 <20210820123400.GW543798@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210820123400.GW543798@ziepe.ca>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=mWy+dsfz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a
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

On Fri, Aug 20, 2021 at 09:34:00AM -0300, Jason Gunthorpe wrote:
> On Thu, Aug 19, 2021 at 11:14:37AM -0700, Kees Cook wrote:
> 
> > Which do you mean? When doing the conversions I tended to opt for
> > struct_group() since it provides more robust "intentionality". Strictly
> > speaking, the new memset helpers are doing field-spanning writes, but the
> > "clear to the end" pattern was so common it made sense to add the helpers,
> > as they're a bit less disruptive. It's totally up to you! :)
> 
> Well, of the patches you cc'd to me only this one used the struct
> group..

Understood. I've adjusted this for v3. Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108200856.E0E8711CB%40keescook.
