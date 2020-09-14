Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUVS735AKGQE4SSP3TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E00269169
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 18:24:52 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id e83sf119437ioa.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 09:24:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600100691; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZXEddgNWxOXldjme7Wwnzjf+yYd1DS+8+Ux3ZMET+l98A/67TDkTgm+5DSh7Q+4hYs
         ZDDGfqW6NxsiFccxlJ2USG326+0TWkK5EjUHAYMXYh3ohMXDOHRzueluMWuj0U7DdEJS
         gd+Zx0eFdcx2Ol6S/J+yQCWZ+DdRAQqCpwN7nSgC2lCgvZM2Eq9/7p3NfKXXaU5klYad
         hP3FW/CzrNZTfyhfRRC0HQrgJrWfh6bGyyGCq0RFwE0oAVBm+RI/6UxIR1TwiX3HutMb
         P3SFC3JbvPVKNftKO0r4SUTM5r2+7aNfinkTfEVpz4oESfTxB/i2dUDIO/WBz0ivQqkH
         n1lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vhqjpmb0N0T++8qcVUDfUiiMIt8k+d7CrFebGaVxpGs=;
        b=WQHiAthjTNEDB0Kb9DZHcMk66n339BUW3s9XZRWDg2ovsXvbSsIDKIJj8eIAnNy57p
         4G0e8mAPMHJkPcqf67Kt3RftSaYCcncF2rvHRyZPDa1S4Rmt73GawBLjgrLO5FFP9pkW
         lqSxdpIzjEkIBPwz+sHUHmSQGtR6rCWhIhW/omEaBS8N38AFoks0uCNbv43IQ+zPZtHG
         0gRtLVQi1gsiDGxmYxqw9b/R6Xw3oyr6QQXI75iBHs6XsiMrckwr4aLMaGCEbmZD7wRL
         j3V/11xh5Jj4pC8lPZQ97yd9CMnsPwDrTRCZ7svA548tr3hqCdozeDaU8sNvY26j43jN
         zA3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HNTTL0kI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vhqjpmb0N0T++8qcVUDfUiiMIt8k+d7CrFebGaVxpGs=;
        b=mTadThyg0MRI8I4+QDtpKGEZWV5XYKGvfxknblXLfw/WXzuq/8brNnxEmdeX6wzepn
         V+P4KQY3dEle5EZD8UpjEiVsdG1HvmZhE7XYVwyP+YUiX9ttaw34oh2D/JzHBGOExvgg
         gkSK1q2CtXNzahab77geoWKw4jjvF24IqWRf0ndTVhcjI7vIVrkaX01LzjJetQ3YX0l5
         A3gQ4yN5zV36eBjK3CFNOek+9PZaQ+XL04mRud7JsQ8UjOceSggS8A3/U3r/Zp04wh38
         kR14YYJKa0VTYbnVExhmhKXGuNYuvf6CIt6wZ2Oz2P5RQGZC+rPKVZ3qLS72CN6iSwQO
         GQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vhqjpmb0N0T++8qcVUDfUiiMIt8k+d7CrFebGaVxpGs=;
        b=BiXdS+BdDlvGRoRANfhblPNTc5h0xFSm5pUqU6i9aYDvUsY+Aqv1G4qk5p+HcoVZwr
         ZwUQoh2LI69RU7VcjeOe0L1r7kmFdREowdJPfMFApO6da/2AK/JBrq9BeqgAESzHIsle
         lBPJpwE19ZWnPpAGg79P2u/LlbV3gJ1/OhoceE+ffbdn407xmPcme6xiuVfixrv3eInC
         hWuHTJdzgFd6QFHp0/WLi5bojqtQ7yVVc5eWW6GX/gksuHyc6Ik/HGas7j9M/wokzBm+
         d4hOieI6sGmBWDb86RDE+wrgfrW+1AgyjAnEZQ7csEfw9/I3dnqT+gs8nlOlvlSYhGCk
         E0Wg==
X-Gm-Message-State: AOAM5327fVG93OH0ueDoHU1LcaL6onRVYzg1MIz6SQlWcYu77VUimOG1
	LcuMApMII3aAYLS7I18R2OA=
X-Google-Smtp-Source: ABdhPJymclxfibj9tNcwdpAXXC0U/BuQtGvYT7eBmD1qdx/UvnjjSznyNDT5GBQStUZqTI8ahtzkrQ==
X-Received: by 2002:a05:6602:189:: with SMTP id m9mr11709157ioo.74.1600100691048;
        Mon, 14 Sep 2020 09:24:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d68e:: with SMTP id p14ls2468127iln.11.gmail; Mon, 14
 Sep 2020 09:24:50 -0700 (PDT)
X-Received: by 2002:a05:6e02:d45:: with SMTP id h5mr13388449ilj.168.1600100690658;
        Mon, 14 Sep 2020 09:24:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600100690; cv=none;
        d=google.com; s=arc-20160816;
        b=H76Aa1rMQ5ghHdbLHCpgxqIf4Fbaf6ZLk56HKPfELtNvuCzam0udXjWMQwfy2rgyY8
         5BIEY7NfOV5dNfWPjamYxfr5RRbtLuNuWrvPXDcsZ6YQldNIyRA5xqOcRHLLovrmFqMV
         q824uA95MwaFvpx0WXRUJQ77g/ioca04d9PIb+O2m+2vVnAJarP9s2ygOch/A1GmJPeb
         EVPC257CGnlYgVe9B0uF6jHis1NVEDJD1bXVfoEDDDfHapLjC6+I7ACS4FYQHkVdG7Wh
         sMJ7guhEpJ5cTyEjug6+5Rr0P8jF7eC27DDS21UcRMS0P2AvPneNWO4uyi5UM+dl6l1v
         NBMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fVMJtLEi70SliciPLw4+MilLGu7FA9F8vZp9H2kXMqA=;
        b=qA2Hi/d2OAgK60/+7Qi1TLp8Qjv+FNOpXdNpSSofpM/IRbncHL7wNSZudlB4XIm5Yk
         ZBAGvTdzpO9Y0gv/D88e/fTY/gdPkGDrMzidmAojrActdHwegssol69iaSacJZbhjftx
         XlRzeAcx2phFbZcEc9F0JZ7BnroK684l4Znh6CV/qXaG8xIS2Ev7VMF91ciiWEVZnDWn
         JD4QEhF8ATWx2AbK+UY06+A+UVI6CrjbW0NPfOOz4ByAajaD6kfa0lUC2DE7vcV5VdFG
         u5zVMESoeTBsoPZJjCxgXjwd+5DFTxvTcAaGIUzyGSJoTMxMcUobdJNTKlpG9UJuwU3d
         BN4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HNTTL0kI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id q22si564013iob.1.2020.09.14.09.24.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 09:24:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id g29so202026pgl.2
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 09:24:50 -0700 (PDT)
X-Received: by 2002:a17:902:c3d2:b029:d1:9bc8:15f8 with SMTP id
 j18-20020a170902c3d2b02900d19bc815f8mr14798812plj.29.1600100689792; Mon, 14
 Sep 2020 09:24:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnSpsvpjpchqq+5Sc7i0xx5f3oKTJ2jnveSv-WQqmj68A@mail.gmail.com>
 <2ff0-5f5efc00-17-63900500@117564367>
In-Reply-To: <2ff0-5f5efc00-17-63900500@117564367>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Sep 2020 09:24:38 -0700
Message-ID: <CAKwvOd=LNzffJfNKgfAwscTo=u+UH_qSUq2UNmv5NGzRJdEcyQ@mail.gmail.com>
Subject: Re: openmandriva clang kernels
To: Bernhard Rosenkraenzer <bero@lindev.ch>
Cc: =?UTF-8?Q?Tomasz_Pawe=C5=82_Gajc?= <tpgxyz@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HNTTL0kI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52c
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sun, Sep 13, 2020 at 10:14 PM Bernhard Rosenkraenzer <bero@lindev.ch> wrote:
>
> Hi,
> hope you're doing well. Just a quick update: Our problems are all sorted out, we have a 5.8.6 based clang kernel working very nicely now, and it'll be shipping in the next release.
> For the time being we'll also continue to ship a gcc kernel just to be on the safe side. The final decision on which one will be the default for the upcoming 4.2 release depends on what feedback we get in the beta phase.

Hey Bero! That's great news!  Please let me know how the beta goes,
and please send any bug reports our way.
https://github.com/ClangBuiltLinux/linux/issues.  You should stop by
our meeting next week and give a status update: see
https://clangbuiltlinux.github.io/ for the calendar invite.

I had accidentally added OpenMandriva to the kernel's docs on LLVM:
https://www.kernel.org/doc/html/latest/kbuild/llvm.html#about.  I had
sent that before Tomasz clarified OpenMandriva wasn't shipping these
kernels by default.  So if you guys ship those kernels by default, I
technically won't need to amend the docs. ;)

Hope all is well my friend!

>
> Best regards
> bero
>
> On Friday, July 24, 2020 19:48 CEST, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> > Hi friends,
> > I remember the thread about testing clang for kernels for
> > openmandriva. Are those actually shipping now in releases?
> > https://github.com/ClangBuiltLinux/linux/issues/690
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DLNzffJfNKgfAwscTo%3Du%2BUH_qSUq2UNmv5NGzRJdEcyQ%40mail.gmail.com.
