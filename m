Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEGYYT3QKGQEGGYE6RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B22F204352
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 00:09:21 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id z23sf1046435ote.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 15:09:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592863760; cv=pass;
        d=google.com; s=arc-20160816;
        b=ymW8oFEZYoAc9aJLo8kKJyv/XW0oBjXuZwKA0TqI2dTsUfSdGdivA5PPARWG/RlkjV
         Gp9DaHNEfTOA2tYoUB8RG06HI3WYvBvhscpLeYjnyAMXqQKuV2v2I06smF8vQrcZUWxl
         hsGs2p646mVs4pAEHRvLcNF+2oVo7LHYGXyU5nC7LuZkqw7fXLLlcLs+DRGI+yl2u0Cc
         UtOuP9E8RTWnYvMJ8kwh0UZsmv0ti1s+HqspWDrxSfURb3nfNy/ScQLkOdk38PmOJK5R
         IPkBAqAFCIjU5X/W32LYqYBMA02i11JOLAPxxcz21kvkREvEs+M45GwYWgHNzxh+Fn3J
         oy1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SzE5kSC+oABsmUEZ1qidt4tUPX/CkGX7oV6c0GGTplI=;
        b=YxWWX+u/CruCYiE6U80mU8hprstQGcKgZG+Zp2sgeB1OF4wtqj8XiFxVn9DERmsYmD
         YRZTFS/xI0DJMyXUfa+3xokxDfDzR5rIUezi8hAqGLDSYbU5aA6ULM7a62MdHCgfnMEx
         4H8tY2rPoZfnnP+c6EkUdB7NtabXVdfCnxw1P9MsKz3VMter65XnPRD6RKNF1cPOxArp
         JZjJ1GBuk1grnVmVRSbRO7psrEQ/GQt4WavetxmgYa57Aj7Oq6a7JzqOPQvKHvcLhRwk
         KsJ4IfdLUqTFjcf1NTabkcyOAjNQid9QwOSgELAOfQ+d98NdYUm3ZLSdhj/Q/yqO1X6z
         XWqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bRwAtSDc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SzE5kSC+oABsmUEZ1qidt4tUPX/CkGX7oV6c0GGTplI=;
        b=ae9GzvZO3lRtXAGY+fhFIX4i1Eh2fR7KfO4l5OU+u+ffSSPsa2zE7UR53UIJ6xZy0+
         LRPcdswjhjL0WQ7/0hfdiC6HioJC2jCZ//5KFx0LDCnP1ImvykvqryuLeMga4v1og6rU
         AUWAezMmG+Ksnur/E+3R8N45TWO1SfY8jm2Wn7WRFFsKNDypRAwVDla90wcJyuYyCowx
         3kmFg6kyxWWZBvVdlOTguh3h/sUsU6j1d2PRG2YtxrwB9VnnpcbHMTRIUvHtsawuTrH/
         kpRSx1GK6c+/ExDG0da0iRM0Zw9IOPXodm/a9nTpldO9PqWZtqLxPuIcSV6FVGImZIAF
         Gy4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SzE5kSC+oABsmUEZ1qidt4tUPX/CkGX7oV6c0GGTplI=;
        b=K7v1uL9OZ+ubWKFE9zypw0K2L9vPru+k7IBMcNcD6vh8aVBD0M8IgDedargWqqIwBy
         +ldSmHOWifJHPb5RP1Xq100/Z92Kj71Zo1TXff2IWkryt5jvi4dXdnSw1G1bcF7Y7s+U
         j14qFSgrniS9aWw0SeYzAnnL+1d8A1zQeF1HLHUQ36O58y18pE7A7YssfKAPmycmGtpo
         R7zmdnB0ttwMtgAwM9B5wlYEUv6/2CNy8FJbQMOyX8SXd91I5ST5akST16oykYkn/oxP
         rDKq9zkMQbvzAHhBTJDyTpuwd+Hx3RNQ6nJfgm2afRT+44ZQ8CR2ohq2N8vj6CjDMakV
         ON0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532E+eYkjouGYrh//3un88pW1MBo81y4NPS8yYZ/uvWAyL9Zn6Ra
	Sj+i1iXT+7Nl4Ze+XhjLCes=
X-Google-Smtp-Source: ABdhPJw/9kuixO+cS8LS0MZXHHso9iBHyTI4M2E8usiE7+Q7Yi4Uvl0bcXtl8j0vZR0RYLtB/b3mJQ==
X-Received: by 2002:a4a:bd10:: with SMTP id n16mr15979034oop.27.1592863760301;
        Mon, 22 Jun 2020 15:09:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:494b:: with SMTP id w72ls3596579oia.4.gmail; Mon, 22 Jun
 2020 15:09:20 -0700 (PDT)
X-Received: by 2002:a05:6808:34f:: with SMTP id j15mr14744678oie.121.1592863759966;
        Mon, 22 Jun 2020 15:09:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592863759; cv=none;
        d=google.com; s=arc-20160816;
        b=NndJWSVxU733JzOyK3JOd8JrKlkcKJKu94DE71e0n7qh35J2gbHeHrvj3E+NoMgLjg
         dlb0ZC3n16ejg/VnXSVlkBB0vn6J4O26V2xv3aenohe88B0CnbF8I/ETEXcFmmmlPr8A
         teXVEb7uLMAKPk2uAtn3aQK8gVw+RVhAvT3vVIju579k6ZyHMnuvbZjbOFOzXgVS5fNL
         vD9OXEqLgAVves1pUrjzt5kbIgu5xqqPjRTJM1XJqK3b0R7ca+BV0VFRC0L2kvvbYUOO
         oU/DUX1nGhGIda3QtxYERvQM8xObFot5QrJzc0ze5jljIu2R6+8izJfFQIzJOiUDpZry
         L2TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/CEH8VTZP2jm3BrV0iJu7stxsX/cPaPfhD00FUDCJv4=;
        b=Dw2JVZtx05gy7zJkoWJo129kkQK3OG21FgZRXx+Ciz/alsbEoGJ4Vb61g5ik6HXaOB
         V3OPy943akucYehIQNzcKZuU0qRtwc2wHdNuJvaxFiaHfbIyp4jcm5qvdG5g8rqeEcAX
         hssokIArMyhyhjzJVRADCqdhloF/yyk1A/D+GHn7oSgBCRBHaCtQHaNMs44Pwtq5Colr
         vK2u4aqo1z1AwV2LgR23P2oC5h0Ut7GZ09XJvTvCsV2/PHIBKIfsmoWOABI6FLxaqnp8
         yblD10/6cYWXzxgh18EsdWo7r7yMoe8E/cjL5R1gM8xJcWW+5+vve0A/fgHmwMFUX2wS
         M2YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bRwAtSDc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k69si921035oih.3.2020.06.22.15.09.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 15:09:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id l63so8866082pge.12
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 15:09:19 -0700 (PDT)
X-Received: by 2002:a63:181f:: with SMTP id y31mr14845560pgl.47.1592863759529;
        Mon, 22 Jun 2020 15:09:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id cm13sm454470pjb.5.2020.06.22.15.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 15:09:18 -0700 (PDT)
Date: Mon, 22 Jun 2020 15:09:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Fangrui Song <maskray@google.com>
Cc: Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] vmlinux.lds.h: Add .gnu.version* to DISCARDS
Message-ID: <202006221508.F3A8D3B9@keescook>
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-2-keescook@chromium.org>
 <20200622220043.6j3vl6v7udmk2ppp@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622220043.6j3vl6v7udmk2ppp@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bRwAtSDc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Mon, Jun 22, 2020 at 03:00:43PM -0700, Fangrui Song wrote:
> On 2020-06-22, Kees Cook wrote:
> > For vmlinux linking, no architecture uses the .gnu.version* section,
> > so remove it via the common DISCARDS macro in preparation for adding
> > --orphan-handling=warn more widely.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> > include/asm-generic/vmlinux.lds.h | 1 +
> > 1 file changed, 1 insertion(+)
> > 
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index db600ef218d7..6fbe9ed10cdb 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -934,6 +934,7 @@
> > 	*(.discard)							\
> > 	*(.discard.*)							\
> > 	*(.modinfo)							\
> > +	*(.gnu.version*)						\
> > 	}
> > 
> > /**
> > -- 
> > 2.25.1
> 
> I wonder what lead to .gnu.version{,_d,_r} sections in the kernel.

Here's where I see it:

ld: warning: orphan section `.gnu.version_d' from `arch/x86/boot/compressed/kernel_info.o' being placed in section `.gnu.version_d'

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006221508.F3A8D3B9%40keescook.
