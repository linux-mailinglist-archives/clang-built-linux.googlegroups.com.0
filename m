Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOXE72CQMGQEUF2ATVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 7980D39FEB0
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 20:08:59 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id l6-20020a3770060000b02902fa5329f2b4sf15583433qkc.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 11:08:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623175738; cv=pass;
        d=google.com; s=arc-20160816;
        b=c95aEpc0x/ReAD+srFFWrZauNixkASQf8VsbvctFt9CU+uH43pO5iY4yeZ5uyVooM1
         8/mh7o4i2iEhCrfOvxKqv/RiUkCzUDRQU2yYLruH690IbqCMlCuN8X2KE1hMLAhqtxPM
         7JXe3YiunlUJVFq+t9VLfmKKVS3hICH5O1r6fzBGcbwjSmnzDyQV1Y36OjN8zCTZVCtD
         Do8kCoya4ArM9QtwXA9LA7fhwtdJXOZO5YxKE1vx+d95WMYE2rgr7F56Sa0w57QdZv6A
         ce8rr55RFeLVD0wt0P7J/V4x+ZC9oDM/HphH+C4l9hW8tBtRmaWV5qvUm5kEey5/O6iu
         p7SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IDMqD1W3+QvJMU9kHwxTZhC7CeBqBCMb12wlws6/OgE=;
        b=zFm46Oba4udTBROBRTlEkMXVQYN94sLQFCp6SruWm3D1/NvxjaFyAy6Uv9UnaNWxrF
         FNu8iWMz2purdMxYkyt4y81HjebqX7je2QKBBbpi5gKr8y6uDrXgaGODFPGIlouTQnJq
         oOjZWp0EgaJwI1VywAyvrFWoc47/HEnD/aR+gQQ+2PvvoY1m7n+IYLsOWLAUWVQsi3UK
         r6NCJc46IaKd/nxYktIDCiO97vT2vDBtpZoHTtG1HYgzUB4iTUnJQ/HWI02VJZYiAcOP
         7jW+C+8KlkUMgMF0ECSvuwHVtFJ38Q3sT9Ki6JBOsSegBw43Rk822+FmsOYa3leimeev
         NkIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ECzb+HoW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IDMqD1W3+QvJMU9kHwxTZhC7CeBqBCMb12wlws6/OgE=;
        b=kcaQ4go9qIFea6HMXldqXAvoNZuJXexX+HeRbuyNUxbKEeBRouEaw06/UYGsJlq3aM
         6iwGQr9iWya4CaIC77FHkQBw2wuaEHMBvFAihAC4EX3HTmNx6ZRzVIxhTuhPqh7Li6PE
         rPjGdQBghVCuiG8mDxG2vAPJozpK+8b9jyNwSrXrU/m2gIElhP/NvOyQVQmTkTJ4Kv4k
         oq2MKEyTP0slFcz97G3HBzsgHSA790ZEogD14xU4KNqnt0Rh68b6/PAV28pjn1mrxFTk
         XErNBad7XF1kULucj1ptp41mJeG8u2IESsE8u6mRGSYHa3kf8CegbJ4yDKya2nU5Fo3b
         E6kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IDMqD1W3+QvJMU9kHwxTZhC7CeBqBCMb12wlws6/OgE=;
        b=VOLM/6wjA8TE9K+SbcvJC+wWH4Qv3xlHv5+cLaJntcMVjfeYDWfKgMc0Yl1RYeHnJj
         j7n6QH7LZmAdoUaFkepCPeJ4X5kL/osk7xXXgT14bW6b4nftdh6lq3+qjH4/r7TGSkft
         5hGt8xNb+HIDTF/caRD4uKxEFQcwjHOTbb43WS31h/3wCddVCCO1Ls1mFuAm2vhuExGb
         6NDohLNh9j7EavS0WOF6CYtkW++MC01QuifmSsrchknxgrAXBbztlh6CVEh33d2hhIxI
         OfQEw1VUNeqCxdcZEElsjB4kqTS8R3pwOLwuEMwSFIxXuki0QHizmhav3cDImahoBc+L
         zm1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ly1+QtGLCGw+VxDhVDi7027fFk4suLRamRk9p/88bcbuXf5uD
	QMuuWzcC4rupD9DlFlHjru0=
X-Google-Smtp-Source: ABdhPJxiJuEnlCm/SLxa18dc99jNZlU3kxzM8PRqemmGqo6w1FqJmpHJHnoWFaAexj8BOp55AD/F7g==
X-Received: by 2002:ad4:45a6:: with SMTP id y6mr1135097qvu.54.1623175738545;
        Tue, 08 Jun 2021 11:08:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:22d3:: with SMTP id o19ls11033917qki.3.gmail; Tue,
 08 Jun 2021 11:08:58 -0700 (PDT)
X-Received: by 2002:a05:620a:e09:: with SMTP id y9mr22489693qkm.359.1623175738164;
        Tue, 08 Jun 2021 11:08:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623175738; cv=none;
        d=google.com; s=arc-20160816;
        b=T6iKzoswuQ5SDpYOQ++RZ9kVuapWGniowdk2vyESfC4SiedqgJwLvOAtVUGQ6r0Irh
         +4+oSBIYJXeua4r8GkhkHT8DhfGRQkGbwxMCl4yWoRENvXrM2pc93nzdZmiv3jrWVYVi
         NGi8WXbUpp/ZEgoDcV08K0+pwbSFyAVoYIX6guuMUIccl/5459f3fQAfqaqMvegRKJmT
         jZlcQ+kC6jI2A3N8bHcCK2OH7yWnLLLyLB+YaLlR/oYLTt+Qwl/Kf930SBe2MRXPpwxE
         JO9ks0IL3McmZxW2hBceTaJuSFdH/KVtKZy9fUNf0jlV6GCzLqe1MQ0EcFS1AQ9zk5lo
         Enfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HKWoMrQCd//Myt9Hyg1eei/arcCCfE5jhYim9Klwhxk=;
        b=Zg0Pj9tkO4oOWGqCqasWKZD5bSDKIr4428GUDiteyNn96NOEu13sNlsYV93WZstbtr
         KpduMZAD+yzbyZMkzUGDCKLDsy4zobw3jYNS6ZzFBtP+x8mulKMuDAlv3HDkE2hW2XhV
         o0LofeCBGRPFy67ayLFj6u7oVkeuXdyaqE4Xvr7HkZhzC7/XaATzogVTqiQsXlatdAIM
         zUG6FLJTcSmp4rbk5Zl2yTL1fZUPvjiXjZxrQdrH4P90ECXBvVJIgUBZFomobHQARNK+
         Y8DkQ8MjZ9M5Zcqld4kluuuYR6L8kTSgkDvksFZK9wP+zLM/5dbAo7B1UI8Xwgjl/zHL
         /89A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ECzb+HoW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id o23si1452182qka.0.2021.06.08.11.08.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 11:08:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id md2-20020a17090b23c2b029016de4440381so2794984pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 08 Jun 2021 11:08:58 -0700 (PDT)
X-Received: by 2002:a17:90a:9103:: with SMTP id k3mr6084296pjo.117.1623175737784;
        Tue, 08 Jun 2021 11:08:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u68sm2637637pfb.64.2021.06.08.11.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 11:08:57 -0700 (PDT)
Date: Tue, 8 Jun 2021 11:08:56 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>, samitolvanen@google.com
Cc: Tom Stellard <tstellar@redhat.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Recommendation for LTO type (thin or full) to use for Fedora
Message-ID: <202106081105.1CD9907A99@keescook>
References: <8aae1be7-d9bc-8a55-0bbb-0d94e6719baf@redhat.com>
 <202106081050.623BC5C44@keescook>
 <CAKwvOdnukRtNwG+OLYakDK-9aKJX=0mCf9nA=49XxYxVUZx8zA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnukRtNwG+OLYakDK-9aKJX=0mCf9nA=49XxYxVUZx8zA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ECzb+HoW;       spf=pass
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

On Tue, Jun 08, 2021 at 11:02:06AM -0700, Nick Desaulniers wrote:
> On Tue, Jun 8, 2021 at 10:51 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Mon, Jun 07, 2021 at 12:36:23PM -0700, Tom Stellard wrote:
> > > I'm working on adding an option to enable LTO in the Fedora kernel builds.  I'm
> > > not sure if I should use thin or full LTO, does anyone have any recommendations?
> > > What do most people use?
> >
> > ThinLTO is used by Android and is much less resource-heavy at build
> > time. Full LTO exists as an option mostly to be able to a/b test results
> > and bugs. :)
> 
> No. FullLTO is used by Android. Android Common Kernel made this Full
> LTO for S (within the past 2 weeks or so).  Every pixel that had an
> LTO kernel has shipped with full LTO.

O_o

I defer to Sami, but ThinLTO is going to be much nicer on your builders.
:)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106081105.1CD9907A99%40keescook.
