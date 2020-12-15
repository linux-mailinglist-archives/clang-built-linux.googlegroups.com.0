Return-Path: <clang-built-linux+bncBCF472FLYAERBSUV4T7AKGQEUIQBO7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A942DB457
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 20:13:15 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id w5sf6144593wrl.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 11:13:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608059595; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bd9m3o7yYmyBo2y0GILGOgF0LFUDgBipmeoDFFuBNCtwiUD8209pY8PmjCW2V0+tCJ
         QExjeC/RBjjke8AFwSBMd3CpJoA5IXID0QoJdwL5G+QYkBuYnhQbvtkehAMY5HtKEBCD
         nAQl+g1IUSAXtjRPMAfv6DwnWBs9JrwdWttRlFcvljzvyNuNGrV0WIpg99kmIDavDl9l
         w3UlHikEXmUXrxkc6j4SkBPghKf/oF7HxbFqGlAskEpurOPzlA6jzrYhghCdyfZWs4T/
         R2ttLeHhfXhzVSDjphe/tK9ZkCQblrVXwoM6S42GbQvXlyEnFAdXgVN9x4ipjdireyGf
         ssCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4gHRrHYQjxa1KrQ0LC65OXGHG7NCVh83yzG/n1I1p/o=;
        b=e5rAL9XQPJbmo2haLe9izAu8oonRO00Rr96rUdZyWvDzTZ4OxK/eA/eQ7iE+FcCHZq
         rKX1YBaFnF7Lso01kJ8QrCMWnAur3d4mSGxGlpEq/e052A4VBg2tZJrUbecku/WzmeFy
         Qj5q69IUVdeG4b+xq7Qn7LU/wcHOgM8o8PgG0OljyhiGQRXGjY1P3QpCBqUcmLFVJmsq
         mAY9yt4jmLyXqK7bJr3NRpZ3edOF6OTnVoavJUAUWlv9GAYICGXdt0S4B3Azz+y09Ajf
         3yDqnjdGIlU6iFQZGw1buuti6KAkDSvsljPq0GfGlB7oCjzJT7YomPW6JzREAMyfS9uc
         Gd+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N95ViVQS;
       spf=pass (google.com: domain of issor.oruam@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=issor.oruam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4gHRrHYQjxa1KrQ0LC65OXGHG7NCVh83yzG/n1I1p/o=;
        b=kqlG0AZ6Yo7+kzM+LuJPApu7sHBVKFnpfukTKnJQXK3VCVdMrsFrT4r+lzVOS3qypI
         GAbtpfkP4jzPgZxfAWfOQyg2nSLF58flO0DNw5OhDZn11fBiGoFKgc08WPOnyrhKg4XT
         PqTi+r/fxrLggj1mge9YnyBA9txgAZExph3cLf753qvpFqTFpx0MZogXOc4tRBT022oD
         v6xPAp9DTEh1BQmrMrSAWSmBRuvjqdXVVB9TywScsxodh2OXRuz1HmKOMMNT7YGFPIdV
         IeQuHokssKBgU3iergKYDHMCDReYKCwAf9GO+lg9fJ+/My3vZdhnXgdR7On+dbrledSN
         aUFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4gHRrHYQjxa1KrQ0LC65OXGHG7NCVh83yzG/n1I1p/o=;
        b=tC6gGjcDRGNoCPiR8EG7cedmHBQMaAuT/lhfdI3MkAIDxJQRKB/08uPFkysqiRrPO7
         GFoL78aI2yBG2XzNLUyqBhDiHvfPfeMgcgs6GziOs1PqFhlg0yuBsZ+9H/Aw7RXeF1jf
         XFEt/T/okINdBGzibGDL0DpOzdxFihGz73jt6JGWYFHLzdCQTHd7EhweWwYR0SXVdWWB
         043G3lRW1P093+jx3qii9wpB0m72zSBAVzCdtKzZJeFAPG3UtXMO+E3TRkGyO1ygbHd5
         Cq3Wm3DP8aIAyFwpdhGFXXwVh5QEF7O1LXnAsHNUvCJFq+kjQ200GKCN6dBioAk2+0mi
         Mcsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4gHRrHYQjxa1KrQ0LC65OXGHG7NCVh83yzG/n1I1p/o=;
        b=IFFImFEagxWD8mmVRFjN6cByQaMYeeYShwiTqlwwx0MgZ9y/NXPLTeQdxcQ0SdXEyv
         xjKi4wPLohzrNAJF0w7atCih3eYwO/o7lKfTVl7a57s5pyvJY2zrHFCiP6I1UGZjfuv7
         IcMeGJLtfasn/JGqQy483AqmqeHieBcnlhkkbnm+HwaCpl56zEVlWBwzIO7jKo9sTDPR
         rTY4HOgrCs0TY1TkJYXbRgfXjmtUp0xwPckn9PqT1SRdsWwlpx9oQlPz2GdFuW1YnfbV
         30BF2RDQark21ZqMyPT0MDyDSIE2sNWn37I1O+hZbdGilNIQoCveNqAgY3qqHuowRSfD
         +D1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330UyQRBlb4brfpcTHH9pnSBBkPWbhk7HzfAy8FZqpIVQ00pnjV
	lfZvtB0oGhuT/MpWd7RkHZA=
X-Google-Smtp-Source: ABdhPJxKgVFin8LPYwLpZnNxnMHhxp1ON4MdgJbIHV04DHwyD13mCcZJoYi/rKfESaYhqVWafBWn6w==
X-Received: by 2002:a5d:4491:: with SMTP id j17mr4138765wrq.78.1608059594869;
        Tue, 15 Dec 2020 11:13:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cbd5:: with SMTP id n21ls11463542wmi.3.gmail; Tue, 15
 Dec 2020 11:13:14 -0800 (PST)
X-Received: by 2002:a7b:c4d5:: with SMTP id g21mr365948wmk.92.1608059593920;
        Tue, 15 Dec 2020 11:13:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608059593; cv=none;
        d=google.com; s=arc-20160816;
        b=sRwIFsr3NAfvJGTT6+ZuvUSOYtco2/Lktxy1pnkfLFVIbPMyqcKioCXGA/oD/LxegT
         vUf2NZCq9xcbYBJN3iQ/1SAsw0u/dix+qS5kowRXtEcw16YkvObeuLF2Bi3bLNeYqZ78
         pBPWHeISOfbLcSx8RfaK83BkHO1Jat/m+rrDNcNa4GwQ7HaypcHsMAwEwz/NK8ei4g+E
         CxOpmaTsQ7iwDdtY6FR9GOLf6fGnx5GYs+Lo/IFLfML31H843noJ1Zl6dui3efxsm46M
         0PZKZB1kGLzm086ODR46ttg5uC8kzjN9+ryVIumDRsOQ62m8RFhImkVQDsjLnTxRVRDa
         gx8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cPyfcBydUJHcW1bt7kxWbC3iJpyjcS3VnUgf/MikUsE=;
        b=HUud59xqfC2VHh5+Q+EqIoXcN5e1Lxm5GMTJHqulwWyC/FLT8M4h45EMbVFb1v/2Vc
         3vFE4vW4kKZD7zEV/GiNi5N0Ni1N3MUu8JAlpnxlqXWu2VwffRFhqeZuj9qL38u7zRss
         DMWtWvo93ZBXCU6R2gQrSarfUvbwE/A1YOCbLBMY4zxm//d85q+sQRB/6Bq5xDTzFBKQ
         bA3ZpvVXyWAERlunj8TfSL3E1f8HzbvTUzD3Cu1lj+gQxcOHFZCHcCRViYwhHXZSEzgg
         ySlg/TsA2rx0waY7XYZFozI8FXdHgYHDEvpKFQMrNcPYskoVdEQecosc6FetMvQPIxa4
         p/3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N95ViVQS;
       spf=pass (google.com: domain of issor.oruam@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=issor.oruam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id v15si887941wrg.5.2020.12.15.11.13.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 11:13:13 -0800 (PST)
Received-SPF: pass (google.com: domain of issor.oruam@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Received: by mail-ed1-x531.google.com with SMTP id p22so22202856edu.11
        for <clang-built-linux@googlegroups.com>; Tue, 15 Dec 2020 11:13:13 -0800 (PST)
X-Received: by 2002:a05:6402:46:: with SMTP id f6mr31155868edu.163.1608059593530;
 Tue, 15 Dec 2020 11:13:13 -0800 (PST)
MIME-Version: 1.0
References: <202012151818.lGhtGzd3-lkp@intel.com>
In-Reply-To: <202012151818.lGhtGzd3-lkp@intel.com>
From: Mauro Rossi <issor.oruam@gmail.com>
Date: Tue, 15 Dec 2020 20:13:51 +0100
Message-ID: <CAEQFVGYAZLJd3b=P3j28s7gmzbXuPX4uGtLR2du5e95-N05yLA@mail.gmail.com>
Subject: Re: [radeon-alex:amd-20.45 1953/2427] drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c:83:5:
 warning: no previous prototype for function 'dce60_get_dp_ref_freq_khz'
To: kernel test robot <lkp@intel.com>, Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	ML dri-devel <dri-devel@lists.freedesktop.org>, Yang Xiong <Yang.Xiong@amd.com>
Content-Type: multipart/alternative; boundary="000000000000d99ff505b6858cb0"
X-Original-Sender: issor.oruam@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N95ViVQS;       spf=pass
 (google.com: domain of issor.oruam@gmail.com designates 2a00:1450:4864:20::531
 as permitted sender) smtp.mailfrom=issor.oruam@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000d99ff505b6858cb0
Content-Type: text/plain; charset="UTF-8"

Hello,
the mentioned branch requires the following commit, but it is already
applied in 5.10 released kernel,
so I really do not know what next step here.

https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=8c4e4fd607b17973e54a7e9cc4c275b12ab7308e

Mauro

On Tue, Dec 15, 2020 at 11:24 AM kernel test robot <lkp@intel.com> wrote:

> tree:   git://people.freedesktop.org/~agd5f/linux.git amd-20.45
> head:   a3950d94b046fb206e58fd3ec717f071c0203ba3
> commit: e809646e73921328d66a2fbfddf067b9cdb30998 [1953/2427]
> drm/amd/display: enable SI support in the Kconfig (v2)
> config: x86_64-randconfig-a001-20201214 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> a29ecca7819a6ed4250d3689b12b1f664bb790d7)
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git remote add radeon-alex git://
> people.freedesktop.org/~agd5f/linux.git
>         git fetch --no-tags radeon-alex amd-20.45
>         git checkout e809646e73921328d66a2fbfddf067b9cdb30998
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >>
> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c:83:5:
> warning: no previous prototype for function 'dce60_get_dp_ref_freq_khz'
> [-Wmissing-prototypes]
>    int dce60_get_dp_ref_freq_khz(struct clk_mgr *clk_mgr_base)
>        ^
>
>  drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c:83:1:
> note: declare 'static' if the function is not intended to be used outside
> of this translation unit
>    int dce60_get_dp_ref_freq_khz(struct clk_mgr *clk_mgr_base)
>    ^
>    static
>    1 warning generated.
>
> vim +/dce60_get_dp_ref_freq_khz +83
> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_mgr.c
>
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   82
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11  @83  int
> dce60_get_dp_ref_freq_khz(struct clk_mgr *clk_mgr_base)
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   84  {
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   85     struct clk_mgr_internal
> *clk_mgr = TO_CLK_MGR_INTERNAL(clk_mgr_base);
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   86     int dprefclk_wdivider;
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   87     int dp_ref_clk_khz;
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   88     int target_div;
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   89
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   90     /* DCE6 has no
> DPREFCLK_CNTL to read DP Reference Clock source */
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   91
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   92     /* Read the
> mmDENTIST_DISPCLK_CNTL to get the currently
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   93      * programmed DID
> DENTIST_DPREFCLK_WDIVIDER*/
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   94
>  REG_GET(DENTIST_DISPCLK_CNTL, DENTIST_DPREFCLK_WDIVIDER,
> &dprefclk_wdivider);
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   95
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   96     /* Convert
> DENTIST_DPREFCLK_WDIVIDERto actual divider*/
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   97     target_div =
> dentist_get_divider_from_did(dprefclk_wdivider);
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   98
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11   99     /* Calculate the current
> DFS clock, in kHz.*/
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11  100     dp_ref_clk_khz =
> (DENTIST_DIVIDER_RANGE_SCALE_FACTOR
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11  101             *
> clk_mgr->base.dentist_vco_freq_khz) / target_div;
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11  102
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11  103     return
> dce_adjust_dp_ref_freq_for_ss(clk_mgr, dp_ref_clk_khz);
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11  104  }
> 2428ad5c6ece1a6 Mauro Rossi 2020-07-11  105
>
> :::::: The code at line 83 was first introduced by commit
> :::::: 2428ad5c6ece1a6861278c01c5e71c8ea258f3d9 drm/amd/display:
> dc/clk_mgr: add support for SI parts (v2)
>
> :::::: TO: Mauro Rossi <issor.oruam@gmail.com>
> :::::: CC: Yang Xiong <Yang.Xiong@amd.com>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEQFVGYAZLJd3b%3DP3j28s7gmzbXuPX4uGtLR2du5e95-N05yLA%40mail.gmail.com.

--000000000000d99ff505b6858cb0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,<div>the mentioned branch requires =
the following commit, but it is already applied in 5.10 released kernel,</d=
iv><div>so I really do not know what next step here.</div><div><br></div><d=
iv><a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.=
git/commit/?id=3D8c4e4fd607b17973e54a7e9cc4c275b12ab7308e">https://git.kern=
el.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=3D8c4e4fd607b17=
973e54a7e9cc4c275b12ab7308e</a><br></div><div><br></div><div>Mauro</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Tue, Dec 15, 2020 at 11:24 AM kernel test robot &lt;<a href=3D"mailto:lkp@i=
ntel.com">lkp@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">tree:=C2=A0 =C2=A0git://<a href=3D"http://people.fre=
edesktop.org/~agd5f/linux.git" rel=3D"noreferrer" target=3D"_blank">people.=
freedesktop.org/~agd5f/linux.git</a> amd-20.45<br>
head:=C2=A0 =C2=A0a3950d94b046fb206e58fd3ec717f071c0203ba3<br>
commit: e809646e73921328d66a2fbfddf067b9cdb30998 [1953/2427] drm/amd/displa=
y: enable SI support in the Kconfig (v2)<br>
config: x86_64-randconfig-a001-20201214 (attached as .config)<br>
compiler: clang version 12.0.0 (<a href=3D"https://github.com/llvm/llvm-pro=
ject" rel=3D"noreferrer" target=3D"_blank">https://github.com/llvm/llvm-pro=
ject</a> a29ecca7819a6ed4250d3689b12b1f664bb790d7)<br>
reproduce (this is a W=3D1 build):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wget <a href=3D"https://raw.githubusercontent.c=
om/intel/lkp-tests/master/sbin/make.cross" rel=3D"noreferrer" target=3D"_bl=
ank">https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cro=
ss</a> -O ~/bin/make.cross<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 chmod +x ~/bin/make.cross<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # install x86_64 cross compiling tool for clang=
 build<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # apt-get install binutils-x86-64-linux-gnu<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git remote add radeon-alex git://<a href=3D"htt=
p://people.freedesktop.org/~agd5f/linux.git" rel=3D"noreferrer" target=3D"_=
blank">people.freedesktop.org/~agd5f/linux.git</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git fetch --no-tags radeon-alex amd-20.45<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git checkout e809646e73921328d66a2fbfddf067b9cd=
b30998<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # save the attached .config to linux build tree=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dc=
lang make.cross ARCH=3Dx86_64 <br>
<br>
If you fix the issue, kindly add following tag as appropriate<br>
Reported-by: kernel test robot &lt;<a href=3D"mailto:lkp@intel.com" target=
=3D"_blank">lkp@intel.com</a>&gt;<br>
<br>
All warnings (new ones prefixed by &gt;&gt;):<br>
<br>
&gt;&gt; drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_clk_m=
gr.c:83:5: warning: no previous prototype for function &#39;dce60_get_dp_re=
f_freq_khz&#39; [-Wmissing-prototypes]<br>
=C2=A0 =C2=A0int dce60_get_dp_ref_freq_khz(struct clk_mgr *clk_mgr_base)<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>
=C2=A0 =C2=A0drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dce60/dce60_c=
lk_mgr.c:83:1: note: declare &#39;static&#39; if the function is not intend=
ed to be used outside of this translation unit<br>
=C2=A0 =C2=A0int dce60_get_dp_ref_freq_khz(struct clk_mgr *clk_mgr_base)<br=
>
=C2=A0 =C2=A0^<br>
=C2=A0 =C2=A0static <br>
=C2=A0 =C2=A01 warning generated.<br>
<br>
vim +/dce60_get_dp_ref_freq_khz +83 drivers/gpu/drm/amd/amdgpu/../display/d=
c/clk_mgr/dce60/dce60_clk_mgr.c<br>
<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A082=C2=A0 <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 @83=C2=A0 int dce60_get_dp_ref=
_freq_khz(struct clk_mgr *clk_mgr_base)<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A084=C2=A0 {<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A085=C2=A0 =C2=A0 =C2=A0st=
ruct clk_mgr_internal *clk_mgr =3D TO_CLK_MGR_INTERNAL(clk_mgr_base);<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A086=C2=A0 =C2=A0 =C2=A0in=
t dprefclk_wdivider;<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A087=C2=A0 =C2=A0 =C2=A0in=
t dp_ref_clk_khz;<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A088=C2=A0 =C2=A0 =C2=A0in=
t target_div;<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A089=C2=A0 <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A090=C2=A0 =C2=A0 =C2=A0/*=
 DCE6 has no DPREFCLK_CNTL to read DP Reference Clock source */<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A091=C2=A0 <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A092=C2=A0 =C2=A0 =C2=A0/*=
 Read the mmDENTIST_DISPCLK_CNTL to get the currently<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A093=C2=A0 =C2=A0 =C2=A0 *=
 programmed DID DENTIST_DPREFCLK_WDIVIDER*/<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A094=C2=A0 =C2=A0 =C2=A0RE=
G_GET(DENTIST_DISPCLK_CNTL, DENTIST_DPREFCLK_WDIVIDER, &amp;dprefclk_wdivid=
er);<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A095=C2=A0 <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A096=C2=A0 =C2=A0 =C2=A0/*=
 Convert DENTIST_DPREFCLK_WDIVIDERto actual divider*/<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A097=C2=A0 =C2=A0 =C2=A0ta=
rget_div =3D dentist_get_divider_from_did(dprefclk_wdivider);<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A098=C2=A0 <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 =C2=A099=C2=A0 =C2=A0 =C2=A0/*=
 Calculate the current DFS clock, in kHz.*/<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 100=C2=A0 =C2=A0 =C2=A0dp_ref_=
clk_khz =3D (DENTIST_DIVIDER_RANGE_SCALE_FACTOR<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 101=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0* clk_mgr-&gt;base.dentist_vco_freq_khz) / target_div;=
<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 102=C2=A0 <br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 103=C2=A0 =C2=A0 =C2=A0return =
dce_adjust_dp_ref_freq_for_ss(clk_mgr, dp_ref_clk_khz);<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 104=C2=A0 }<br>
2428ad5c6ece1a6 Mauro Rossi 2020-07-11=C2=A0 105=C2=A0 <br>
<br>
:::::: The code at line 83 was first introduced by commit<br>
:::::: 2428ad5c6ece1a6861278c01c5e71c8ea258f3d9 drm/amd/display: dc/clk_mgr=
: add support for SI parts (v2)<br>
<br>
:::::: TO: Mauro Rossi &lt;<a href=3D"mailto:issor.oruam@gmail.com" target=
=3D"_blank">issor.oruam@gmail.com</a>&gt;<br>
:::::: CC: Yang Xiong &lt;<a href=3D"mailto:Yang.Xiong@amd.com" target=3D"_=
blank">Yang.Xiong@amd.com</a>&gt;<br>
<br>
---<br>
0-DAY CI Kernel Test Service, Intel Corporation<br>
<a href=3D"https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org" re=
l=3D"noreferrer" target=3D"_blank">https://lists.01.org/hyperkitty/list/kbu=
ild-all@lists.01.org</a><br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAEQFVGYAZLJd3b%3DP3j28s7gmzbXuPX4uGtLR2du5e95=
-N05yLA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAEQFVGYAZLJd3b%3DP3j28s7gmzbXuPX=
4uGtLR2du5e95-N05yLA%40mail.gmail.com</a>.<br />

--000000000000d99ff505b6858cb0--
