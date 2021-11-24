Return-Path: <clang-built-linux+bncBCQZJVV3RQNBBPP67CGAMGQE4JPNJPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0A645C345
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Nov 2021 14:33:51 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id w16-20020a5d8a10000000b005e241c13c7bsf1863876iod.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Nov 2021 05:33:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637760830; cv=pass;
        d=google.com; s=arc-20160816;
        b=fdCuLYJxTqjmX09iec8xXghB0kc0UHqbfai5wsjP+ijxlZ80zbdMRV+dgM85ilkbXk
         6VRdEimVnw08Wv+RVQr2E4a+PJEkqhO0QLeXMftEuoT7H1626mbLmBw3RO0kTXEb7Ns9
         pKZdwa/H/VuEfeEnvnIYmcPRMmYiVZfULS/COnBdc/ZqoQnlTzzeaLI/iEm/kyoKlXGF
         1FaMz9TgkXBMPQLrDDq+C9Xe7y/cqD/UTbXVVlaHFy794dpr0x4PtAPTbq3iWOc7T/NE
         8ve5kIudkqCwcY9W0RvuDB9RRtYX7Bqq+AG6yggST3+aJv0WO37uu/V73APQMHYA7rtS
         27mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=wlgds5FdcAWWFTw4pgWAUrMEpWFh9AIcIQtYwGw0zBk=;
        b=zOClYhKvJdJHzsMmBII0Ucx6IVaRvYhHe63zPc5mNMaDlOiqNX8vqvlmB6VT+Ottt9
         m4e1NwksuDASRYU1LcUb89pR6GEunV+iOb5AorGTvEgEeZ9bEZOmZCtUqe2JqDw1hxuq
         XxQ6keT4j4LCPPtIRrxSTHuBwx3Ft+sz+61bAQpLOkc1P6fg5UER5rnMl+fKB7OBoXp6
         /skKAEm6or4WuoGuu0KArSmb26BXkI2EeNQ4VC3b5ykmLqkVWOceGxk/L+owLXLay/eK
         q6G8uOWAE9a3sFuihEL2u/TI+RbG57WwbhQX00s4r+jExHbDEcaUfS24jnZ4lxM2SPMP
         gdng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.210.41 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wlgds5FdcAWWFTw4pgWAUrMEpWFh9AIcIQtYwGw0zBk=;
        b=k37Y8iDE96omI5EunP/GArgHgveLPKtBxc1r4jst7mNzHI1jCT5/GB9XDHZJxMpDet
         HTdM/Th8cHrt8ylZHNFItHF/w9O6HlxpfEWeO+b/K8EIy7c56I6i77Ogm8mTgxOmG+IW
         7Z6o51WzOnt+/drxUePPUp9YqbNWVMh7uDzmDpVZ8JFU0Kqsnw//tzQP3/gAu3R+bJrx
         e1su8Ri+p2HYVbTZtqRx5Hyw5afNyS2EImYDH/0yOL3eUGPnyEWeU0J7Dw8CDG+9ql9d
         vVoQVIMFhAJ/PRI1lb4rkGQJeQu0xOZpFZx1tQZD9izaohVgOWnCoCPEnTb7wZDokoqq
         QtjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wlgds5FdcAWWFTw4pgWAUrMEpWFh9AIcIQtYwGw0zBk=;
        b=rmVHdn9cHMmDHxyAtwj4g0C3PfhicnQGrBtbsCd1k242M6iCKNTxcODgYxFLIjn+g7
         DGEpOuPo5+c4Tt/8K+T/oCd1q4j8EXn8/I5Xs2X9633H8IEh5rNwngMjPzd84b5LY3DG
         TBPITqZzXB4p7TYlxWRKH+G601xebEYYS07QRXFsOrEVQlIqIa6GcLSJHFIKKkL3cejS
         d1CDsHTUPnJ+Py1OP1siXsDes1WXYAZ1ImD0+DFPipyVUb6Vh39nTbSByzT1BHbu1+Ls
         H/SktWCvsIEeQOlDCb2jmT0VTstrya0cXUFGhQaVydz8Ja7Tz5iimkcz0WxAtoNaVtY8
         FB1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ExN/GrCTgEx8q7jQP1AVARJCFftlALezNcP27Do3fRb5clS35
	61S+F+MBsjlg4gU14ApFWFc=
X-Google-Smtp-Source: ABdhPJzLIGJyGlJUxDTA9xvrDNBByih0fNqy5xPbdxATvDs9+NuIXt19T6d4mBwuFDMeSxcRLfBRSA==
X-Received: by 2002:a05:6602:164a:: with SMTP id y10mr13876201iow.123.1637760830007;
        Wed, 24 Nov 2021 05:33:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d9b:: with SMTP id h27ls63649ila.5.gmail; Wed, 24
 Nov 2021 05:33:49 -0800 (PST)
X-Received: by 2002:a05:6e02:1b84:: with SMTP id h4mr12705399ili.215.1637760829553;
        Wed, 24 Nov 2021 05:33:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637760829; cv=none;
        d=google.com; s=arc-20160816;
        b=dzOD5qhbeECGaa8EV+iRxYVJ1xfdYuDIwxIUUpXQ7g3NcmsP+Gvez2+TOZLJq7CjgS
         49fgUZ0B4blskZhuOZlGTyZm8WJooJG3LwHYegLFq6r4GDb/7CHjhEr+nHsOodRSGIRp
         bfA6tOIv7+PeDPd/YH4/2B9ilPdiXU1etOk8P34CblgyrS6cBhCYLxNL3BUCUL4KxrBi
         HtnRupTA5dDXtQE/4ZnQKMgl+FjpB7+ZFXFetg7M+KBRiJPT5Vd2hoaAoP2nA6LjmewY
         8oh0vjKNob3xgNL3JSfHqxVNoJMVgLrHoxhk9LMN6kNoaZYBEmr7ybKoHL7/Cyqi3fkg
         54Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=091FqIUggUob/ZEgOD1UGmSVx8eqHMlVt+VyvTQhn6A=;
        b=0jMyni55PGlz9e2mC3097ve6CVLe4F55fdCbhA10AtsX6oRULyO3Ed80AIG0OK+ZFS
         4jvANrmSGVELT+w0nrKpjwGfzR7OXJT3FdJSrDXawNszPz4eRlTk71l0dxqXdmHQjO7G
         5+Uz6LV2JUoCwcL9EDidrl3YQLalk+f8JFwboK11voBn20iLzVdK1jqblJVo3eQk/WAZ
         Nt0On+wMGDwRUnJKfbfsy2ihJBkoE4kakr8QArOBPhPTnWM7/FcHzkTHKG8CS6dZirli
         UtfJvdS2YIc8CFeYYg+HCfj6vtCBJvfV7hvWVYaHle3oh5zTu8cltghYm/AZhaaHMETB
         QdPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.210.41 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com. [209.85.210.41])
        by gmr-mx.google.com with ESMTPS id a12si408638ilv.2.2021.11.24.05.33.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Nov 2021 05:33:49 -0800 (PST)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.210.41 as permitted sender) client-ip=209.85.210.41;
Received: by mail-ot1-f41.google.com with SMTP id u18-20020a9d7212000000b00560cb1dc10bso4217502otj.11
        for <clang-built-linux@googlegroups.com>; Wed, 24 Nov 2021 05:33:49 -0800 (PST)
X-Received: by 2002:a05:6830:348f:: with SMTP id c15mr13170421otu.254.1637760829265;
 Wed, 24 Nov 2021 05:33:49 -0800 (PST)
MIME-Version: 1.0
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-13-keescook@chromium.org> <CAJZ5v0iS3qMgdab1S-NzGfeLLXV=S6p5Qx8AaqJ50rsUngS=LA@mail.gmail.com>
 <c5d1ee1f3b59bf18591a164c185650c77ec8aba7.camel@linux.intel.com>
In-Reply-To: <c5d1ee1f3b59bf18591a164c185650c77ec8aba7.camel@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 24 Nov 2021 14:33:38 +0100
Message-ID: <CAJZ5v0i61F9SpwfER8o5J_Kf=J9dJUv-qd+bG9hcL42X2eMRtw@mail.gmail.com>
Subject: Re: [PATCH v2 12/63] thermal: intel: int340x_thermal: Use
 struct_group() for memcpy() region
To: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, Kees Cook <keescook@chromium.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Amit Kucheria <amitk@kernel.org>, Linux PM <linux-pm@vger.kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	"open list:NETWORKING DRIVERS (WIRELESS)" <linux-wireless@vger.kernel.org>, netdev <netdev@vger.kernel.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, linux-staging@lists.linux.dev, 
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	clang-built-linux@googlegroups.com, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rafael@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjwysocki@gmail.com designates 209.85.210.41 as
 permitted sender) smtp.mailfrom=rjwysocki@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Nov 24, 2021 at 12:53 AM Srinivas Pandruvada
<srinivas.pandruvada@linux.intel.com> wrote:
>
> On Tue, 2021-11-23 at 14:19 +0100, Rafael J. Wysocki wrote:
> > On Wed, Aug 18, 2021 at 8:08 AM Kees Cook <keescook@chromium.org>
> > wrote:
> > >
> > > In preparation for FORTIFY_SOURCE performing compile-time and run-
> > > time
> > > field bounds checking for memcpy(), avoid intentionally writing
> > > across
> > > neighboring fields.
> > >
> > > Use struct_group() in struct art around members weight, and ac[0-
> > > 9]_max,
> > > so they can be referenced together. This will allow memcpy() and
> > > sizeof()
> > > to more easily reason about sizes, improve readability, and avoid
> > > future
> > > warnings about writing beyond the end of weight.
> > >
> > > "pahole" shows no size nor member offset changes to struct art.
> > > "objdump -d" shows no meaningful object code changes (i.e. only
> > > source
> > > line number induced differences).
> > >
> > > Cc: Zhang Rui <rui.zhang@intel.com>
> > > Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> > > Cc: Amit Kucheria <amitk@kernel.org>
> > > Cc: linux-pm@vger.kernel.org
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
> > Rui, Srinivas, any comments here?
> Looks good.
> Reviewed-by: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>

Applied as 5.17 material, thank you!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJZ5v0i61F9SpwfER8o5J_Kf%3DJ9dJUv-qd%2BbG9hcL42X2eMRtw%40mail.gmail.com.
