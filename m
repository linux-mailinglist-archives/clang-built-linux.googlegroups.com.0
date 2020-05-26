Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEE6W33AKGQEXNICOBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BC61E3179
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 23:50:09 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id 6sf9440693oth.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 14:50:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590529808; cv=pass;
        d=google.com; s=arc-20160816;
        b=w3oDZ2pIBACEROHanWx6Rk1TKHZBucquNsUryPByTJe03JCyK4pv4CwUqaFtNzvPiH
         r+TX4jJ5QLX5kcH2P8Ecw9RJCPIJGBVRZgIM85+1GdgsR7obDY3YkBbVus+tjb7kw/qo
         +ByIkg8849T9j6s0oiT3WaW5TyK8cLtkjNoDMSBRFnn6sVTHL3eP6rN9shEBGv3vmzST
         GNMai2xwTysJ1L/TtrM48Jwgf4Paf1cVteCNMvHYJaQPDu335ZgkJ/efFkmGdtkZqI7b
         gD3nwJv5FiQeQN6F+AlFUcXAP+erYIGPeYgxzlXil3DartALM0Sh0MejTBps70wwf4wr
         Ib1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7mVIls+MIoG2/PKIV0Lt4Wa1OgQ1Vc0isGVf+AwswfA=;
        b=DzWr0jGjfEGEU1CHE62A7FaDmKqNawhqylX28k9RX7xHOmVlK+2v8ku083LnA+RKgo
         prsuJxI/MhCbk6mNy1GXJj+6grJ/U00Euif/raakca7frK1J9PtinWBHtip5hLuOL0Xn
         whgNTdRiJfL9DLwGCtlGdo1mxddui9rxACLuVIW5nO9d5Ko01G9BdB7JjajQJHym3w05
         u35yE4Zjmuv+CHN/h7iRqEe9KJR/B/I6aHpUWM3Yuq0XE2WtYMk7EbMeyECgrarU8/98
         HDpc3jHpjHb/ET4DUogl143RbAWFkVh6OomjGhc9XdyukipRjsMqE3rY4by96b2hU6qH
         Bm6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Hw2H/jVH";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7mVIls+MIoG2/PKIV0Lt4Wa1OgQ1Vc0isGVf+AwswfA=;
        b=gIrZfrmZx7SXbPee/xVuK2QXzpthdldMkOUbfKDWaZd7HQ+bQdQ4yUhIAqqTveulJC
         +c4JX5KTh4fC1bknfSEu8DJPZE6LGahuZ8EE+R6WZSxDt28Os80H/kVUCtQ+RtNkIgn1
         wM/jbCWp3v/jK8s2lGnOH2GrHUivw+QEU9SBhorK0zuN8lIxpdSMAvvH5Cx1/UWNpgoK
         LCMGcRBN0syEBfPivXjTGWfNFmGAWpiTA+LsqXAtaE8zzoZoUH95NCupSVPhx4F9Rg5M
         Fs6x7/rsvsjLgbJrPZbY+0Lnci63DjUt2sVfVnEUlsqUKUvB0+Hu9diIGeD6KWaLd51I
         11Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7mVIls+MIoG2/PKIV0Lt4Wa1OgQ1Vc0isGVf+AwswfA=;
        b=QJyoaKzPhpWdW1f/C9t3zx3fmDgC07fQlc3G50VBYU56B7fwZJPsPe8d0gye5HZMw0
         knZW5HOAMBkc8snFliZLt9jzIWhsV+DYKVOc1aAhBhLN+oBlTi0LHYTwWQ2lAbQ+tV7B
         /r19fvrUBhSWgVSwCYtUJa2mMJryoq30qKAV9rd1/HAjPfHt+2/X3OFJFcMGyvhOwo6I
         bQ1oLrerssNIFwQNh0xr43xSzbSXuvKR7m2/7q9J3nHmTqQgFdXSTZKHRKp/fr8OYzRO
         m69XIMYuH3njnnMHrTUvodRdhJRW7gpR9EZmrhQUgBOCSID7E2mBgURH9KINKxX4cX1/
         G4sw==
X-Gm-Message-State: AOAM531oTKzLsBoIzx+UnqkX/KzWel1ZG8cHfDT2n00EVwWvRcSwNYJg
	yg3QPPZQ1Mcb3zWsERLhG7Y=
X-Google-Smtp-Source: ABdhPJzHprP9Zjm766J/00S928AmQpeTo7gnWg6PBLJCr5MLempgiolHo+DUY3m4dNri+uDF9sd3JQ==
X-Received: by 2002:a9d:6006:: with SMTP id h6mr2355334otj.166.1590529808719;
        Tue, 26 May 2020 14:50:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:524f:: with SMTP id g76ls2405741oib.6.gmail; Tue, 26 May
 2020 14:50:08 -0700 (PDT)
X-Received: by 2002:aca:e1d6:: with SMTP id y205mr701512oig.142.1590529808437;
        Tue, 26 May 2020 14:50:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590529808; cv=none;
        d=google.com; s=arc-20160816;
        b=IY99p4tE0e/lbndp1XWa5F5APCIXi5xJYidV4zUqxBaiDRLfjh12Lt9ZbSgtT2ZmBs
         nDon5yoRttmSRY+C9a6d4NdwK91A2EmGmdtVquWXjoM0dz1eRfyJzIytBpgWAu4M1HXb
         EcFhsKfjGL1Qhx3xJyD5uog8E5GMa7VGqHT/0lPPHaslzYP/273z7oy6F1QWRqXoyxll
         toubxsWo17yS60LjPbVNzrLiljUG5oabAPwqjDNrGIjGIx2B7L15zCcfTdxrCexu4iv6
         NKa1QFfsWzO3jihxrbTUew+WCgiCPrVAruwbKdK0TcJqhe+WQK57qNqlGxYs1Y73Cens
         Ud8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9/BCZPhLHxfw789REQFMhy1fG36ojUWXITABDMKz8g0=;
        b=DBAnSH34fhDEYk62vBF1hKboJgigGxCBt4hdVMVX9ABZjrQ+wD0iW0+DuRCMqBIZTk
         bPSzydbYz5MuYbIdxW8Hl6HFLPwdoNvXsvlXE89mz/nAcr/dUH2pRaVPUOslodhIvzqF
         Rthoig9Tx0kltpuDbPkVoeRrjmcptm9lsqLkCKstM95zbfPUDYjsuWqOSZO+zLIiewGK
         FZv0+akHv5C4kBW/tcTNxvLuk4uP53WDstRjLI4UMcB8xAh+xrTTumwqa/dmqjJ2VoLl
         Go2bmQHzx74xIBMEYm2+0knYPo65DlcnE7xI3gOFxaSxuHwc2/fq0MZjmGtgoB4maWsJ
         x1Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Hw2H/jVH";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id a62si145850oii.1.2020.05.26.14.50.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 14:50:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id k22so9250753pls.10
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 14:50:08 -0700 (PDT)
X-Received: by 2002:a17:902:724a:: with SMTP id c10mr2895651pll.223.1590529807360;
 Tue, 26 May 2020 14:50:07 -0700 (PDT)
MIME-Version: 1.0
References: <202005270324.fspPrqPY%lkp@intel.com> <VI1PR04MB5696BCF57BEEB9E874F98443E0B00@VI1PR04MB5696.eurprd04.prod.outlook.com>
 <CAKwvOd=9w8fMazrrjrttHSXgFBHA0vp5tN6qA+dX=D5rqCRN4A@mail.gmail.com> <VI1PR04MB5696923A89D612E7EB299DA7E0B00@VI1PR04MB5696.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5696923A89D612E7EB299DA7E0B00@VI1PR04MB5696.eurprd04.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 May 2020 14:49:55 -0700
Message-ID: <CAKwvOdnvfQXvSiBQjYdL3ASeB1WEoj-zJGURV1N+DNDZTAnh3Q@mail.gmail.com>
Subject: Re: [EXT] [linux-next:master 6663/12912] drivers/net/dsa/sja1105/sja1105_static_config.c:463:8:
 warning: no previous prototype for function 'sja1105_vl_lookup_entry_packing'
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: kbuild test robot <lkp@intel.com>, "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Hw2H/jVH";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e
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

On Tue, May 26, 2020 at 2:48 PM Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
>
> Hi Nick,
>
> On 5/27/20 12:07 AM, Nick Desaulniers wrote:
> > Caution: EXT Email
> >
> > On Tue, May 26, 2020 at 12:40 PM Vladimir Oltean
> > <vladimir.oltean@nxp.com> wrote:
> >>
> >> What's wrong with a function that has no previous prototype?
> >
> > It's possible that functions definitions don't match their
> > declarations, which would be an ABI mismatch.
> >
> >> What 'fix' would be recommended?
> >
> > Including the correct header that declares the function.
> >
>
> Thanks for the reply. I have no intention whatsoever in making any
> changes to the code structure. There's a big difference between the
> possibility of being an ABI mismatch and actually being one.

May all your warnings be free of bugs.  Note: this warning was from a
`make W=1` build.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnvfQXvSiBQjYdL3ASeB1WEoj-zJGURV1N%2BDNDZTAnh3Q%40mail.gmail.com.
