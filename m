Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBEHYQOEAMGQEIQTCTUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A17D3D8819
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 08:41:21 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id t62-20020a4a3e410000b0290263d7da47fbsf831167oot.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:41:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627454480; cv=pass;
        d=google.com; s=arc-20160816;
        b=XJgOmDDtsOsFH7HoPCZW3KX2Xp8AaG8hV5jpECQimKfQ9TsjIoduNDHyS+nRb5cRBs
         vslw+Ga3v/gfZLWPPJ/lNDOSNMOvazQlRAjX7deiUTjw6woZw31lxo5R4jHjTWIQsB83
         7HV09Qqrr9Cq0qs+eogRJL0rr/1oH6DuRchOaMbXu34Zn4QEYk8CHFj6hL5pHOArKDTa
         c1ka19PSmWChgUUXxQAwRa27FVjkTRLQGmIJ1hqRQXTtkQjhQJKLz68s+ylt38rdZdel
         zMFqb1/+NBRGT1QiAc7nZtj7H7FQObBT9XCUIRUICRjc1izEPVRIOVHGmKiW89ykk6zB
         NuaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ba62aXsauMXLh9Ath9GOWlGjnoaJqWPIboRVIQ9gv3A=;
        b=XqufrxxjFLXAXseFcTMqqRS6tQF7EsRMwe/qAqQPhJ+AyBp1txj0YwUTBuPD0wgpPO
         YCUf8SreS4luLt/BcAIMIHFMZL+9HyLoGpZovTmEaNFPJAqVnZJjR2Or1JuR5Ov9kodg
         yeD/fgrncJYewYiUx3SRAiSup7TbSr1KC2/cFSsl2zZj0jXrSN2t58s26EMHnaIU24fU
         c4j4NT6JVm3AYIDgiJ2bvrcCC/fNhFs+snw3+5uEeCBqCCqzpjCSz3ywEC6ad1flbXLQ
         u8JI2Z7brCmM7Ttsd4UqMAPLEp+pRNCt0skEqK8wsESG7MwJdH+f9OwnV8G8gCfbZh4M
         Df/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=RyFulSv1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ba62aXsauMXLh9Ath9GOWlGjnoaJqWPIboRVIQ9gv3A=;
        b=T/qUf/oLdTsTX3TMjFQAQUor97Qs5UBgMKQe4OR5vCZN9hAPXR938Q6g8gnrtqdB9R
         6CStdleNAmHgecoFYlFr1Qb+WbBWfk+yRH35cS9Mb1oGlpDG3dsF1+V0uw/cUAO+rCKa
         /PjciwHRt9wHb3lMzvlbZVj1jBuizK1UPx60ov6N5n4ZzJ9iGPMNCGm+KUO31Pivm/yW
         qo6SL8PauEDGi1OcC55WLzza3LQMxFOPZZmjQSV9eN1MoVAWwTXmOA/5XDBL4n185cYu
         K/15aiIeazmZeBRs/ixhfE6u1t6vbRXg0/h7z/8L7WIGlViJdMcsCwp4RI7WumvdX2We
         +wLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ba62aXsauMXLh9Ath9GOWlGjnoaJqWPIboRVIQ9gv3A=;
        b=KfltZXEkqpkKqexo4mCXK4GvpHGUyImIh8LCLOiAHW/uBBVXMs2a3VuhRxrHuMgOI7
         yjGNr6x8W/whRG4uRoXm3YiD9QAWdY0OYBm46DEBifmRNALcNwtcvMwTfqn6UX4QeLKQ
         /BhbaSFc5cVu3xlhXJ/869acKe9LN5vq8iq3skb7yHmccOTOt4JO7EhmsY3LmRMu+Wps
         AkkgFlByzrDjCngC6w+DcaTfHj1jCvvgj1FUht6tQj/Hy5ofX+mc1cOM2FJLPqqlemWc
         ghqfrvz6OUtE6SBhgFt1Wh3fjKX5bEMIZJHJUEbp6gmqP9b7Fpf3PLC4nUs4VmlOQfB7
         az2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fCIeF/ptt8ArleAMV2HZVfUvLPM/0c6slvvEMtmM4VidKf88i
	Hl7E0Yc7GSqmfheN2wqGfx0=
X-Google-Smtp-Source: ABdhPJw5K3FsRuSBFkOvly0pXuVE4AFq6vmkPj1XaHh6A0FwJc26FZyaC1vvrWwbDa0yl+kLH25cRw==
X-Received: by 2002:a05:6808:138c:: with SMTP id c12mr17618653oiw.178.1627454480379;
        Tue, 27 Jul 2021 23:41:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a81:: with SMTP id q1ls406025oij.1.gmail; Tue, 27
 Jul 2021 23:41:20 -0700 (PDT)
X-Received: by 2002:a05:6808:2c8:: with SMTP id a8mr5352561oid.84.1627454480003;
        Tue, 27 Jul 2021 23:41:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627454480; cv=none;
        d=google.com; s=arc-20160816;
        b=G8GTU+j665Zg1SptB1jlcm5NZVhm1429Rb/JqatGwy+vFYOPSDf9v4hczs1h7i19DC
         jekAJoU8AXXOkGyDyDB//KMo7HIGLsPXMIOhHL+seje6XcbDCOzqwBUU2Ejg6FuxTytv
         jI08OiYqoUIcbzcRtEA4xPBPjkx4RMDCYwnqIzRzOwFPtNCPJj9lcDbY2WCUpi2mMC8w
         qmXM1k4Vcgb1ijdr3jn0mzXv0AEgCEyNYSLeWv27Uo2x5ni+fV8ZzxE8+lPkNp2zyem+
         TXznKuuuinIGG9dawinsZRwOND8QBEt9+tqfadJxsJeueGIkR7OJ4iBKEGfxyB0Fuzig
         E5jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HL8W+m5zHL4q8Yw0UVXc1CwMNITC/gkgVjJp7ORdFOc=;
        b=E0AnEsABjzi4r99GxHnzSDI3iMFVMgQoNBkO4Zy643kEOfjfiez6uyLtVAepjHbB5z
         iae8R2L8F5Mr8uk7PTPRRZjQNrDT6+B2JqA3giQ3KR69JG5J5WNE0/1Jr/xZ2IXGw7bT
         UpvwfNSu05cjF05hJ+0SSKXJwKPmjKdtjbvLxfmGGigmjWPL6VYAwiBB+/wOzUfVQVWL
         ajr7Dzo7heIu/YVH1iAJZSAg5OQZOEC5bCG8GZx0Kusona5Su/2ofOMnjXD72dYuFD8L
         23YYwT/1/k9gJYhPO8PuGGb8N7u9Ra/JjLELIiLlJKqTcu56m9RTjSej5DZ+2fHToIdT
         SduA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=RyFulSv1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o7si343566oik.2.2021.07.27.23.41.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 23:41:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BA8B16023E;
	Wed, 28 Jul 2021 06:41:18 +0000 (UTC)
Date: Wed, 28 Jul 2021 08:41:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 19/64] ip: Use struct_group() for memcpy() regions
Message-ID: <YQD8DcOeivPzLMkL@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-20-keescook@chromium.org>
 <YQDxaYrHu0PeBIuX@kroah.com>
 <baead202-569f-775f-348c-aa64e69f03ed@embeddedor.com>
 <YQD2/CA7zJU7MW6M@kroah.com>
 <e3193698-86d5-d529-e095-e09b4d52927b@embeddedor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e3193698-86d5-d529-e095-e09b4d52927b@embeddedor.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=RyFulSv1;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Jul 28, 2021 at 01:31:16AM -0500, Gustavo A. R. Silva wrote:
> > Why not use a local version of the macro like was done in the DRM header
> > file, to make it always work the same and more obvious what is
> > happening?  If I were a userspace developer and saw the above, I would
> > think that the kernel developers have lost it :)
> 
> Then don't take a look at this[1]. :p
> 
> --
> Gustavo
> 
> [1] https://git.kernel.org/linus/c0a744dcaa29e9537e8607ae9c965ad936124a4d

That one at least looks a "little" different so maybe it could be seen
as semi-reasonable :)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQD8DcOeivPzLMkL%40kroah.com.
