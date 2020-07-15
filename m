Return-Path: <clang-built-linux+bncBDLPBFGXVMCRBXUGXL4AKGQEBMD7U5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D08220345
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 06:17:35 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id j13sf330295ooe.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 21:17:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594786654; cv=pass;
        d=google.com; s=arc-20160816;
        b=SlX/MIjKAD4G+40UjovmUDeNRIMgj9Cc98iR5LviCWjtVuIdPB0SEqyWbEkq2+ucFq
         gdw++rbKXunMq19xcljnNl1qW7wneZSCz+HDByf6rPxSxCHpFulcIjfrF7LF2Aq1JiBu
         qY2EmPQh3BVOYm9hk0yrxYb0YX1a8j//rBxmjNsDe0H8xLqfWLA5sH0AoAaGFZX+LC0m
         LRIeyyVDtWOcEepMbbot62uWUfuNjIgqALUemobeBknfKewer0kUi0cyZUwiKOwilfcp
         GdfWib0jGobpF1smo5RiSkI/dSpGtzkosHvb2jGFc9cOpvhkAZsVfSXFgDnvobntH4ZQ
         RIaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=K6VNIQZqpTEWp15ReV527o5INwITNZFm9zSr5sR0frg=;
        b=zjzYxv+0qqldhq0CQ4Q3hLqzE5WxGU24LU1U6cGd0a7KIp/3Kq3R8vPK5tvNr+H4LJ
         m6J1QwWz7zWI81mi/85qJqL5pFY2fKeZHFTxJe1wDjaYnGzvtrAzYxR2MZGBRs7r01SE
         XETOPu8srr7UKWJHhTpK3YoiOMKxXf4oYV2K3+8eI7hggfowNHX2nSaz4BfQnfh+ADqX
         42iH9FPqcGgk+HD3fnLGh5/Ne9muTHhz+EUhEM3k5/Ssadhe7zT1DA5Rb4HXLZ+vaZNm
         6Bq6PjBoEeM+MoVwiHcI6WxcZKPlD1gb989CqkZsRERwKdE4/mmpg7gqbfB+apmpHiFY
         2LMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HvI0gTSp;
       spf=pass (google.com: domain of smfrench@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=smfrench@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K6VNIQZqpTEWp15ReV527o5INwITNZFm9zSr5sR0frg=;
        b=VHvolhZpD9aqerrOBh5A+zrTGxG17GEgdg22iCYFetle1Q2/lYXhT4eyrEncDeprI2
         rXaVXBCBH6ZsTQ4RzduvKZBc+aCS9E3jLvWNtu7kNt48+KAY+rEnXZXL+eZb37643f+j
         gBHLEVRmkGlao7aKJC9GDaAJP3ISro07HMQur4Ok7D32S6ockeMZrctfOWMk6oYCq0Lu
         xjst3MeuS0qKkHfiGh5kAaIZAHr0maMAypJuFIB4Rqsky6Yb8FCeLku6yqY6GOGX6s3f
         EgUUCDXb7VNWQGBjWJpdFk/40WV5HdG7izyzszCnGpgbaYg9Ouy8sh4REa88LRZSQ9vK
         fyXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K6VNIQZqpTEWp15ReV527o5INwITNZFm9zSr5sR0frg=;
        b=iddTt0HoKqEtyEhuDujb8BZAnT5SfgR4lnEWuVZxpSmBUu2EarOv6ODDOwR76Kj2Cl
         r/hIrfSNGhG4XeYtwVAzNAHhuUTLBl6qamoLKswA83XNTARYNuS/IeKRxKAtIGlMoEDo
         +Af+MWkt40VFUvYrSQoInwUMpNxqd9hrBOwycx+aEg4q1EE1xyCmQH0UVQTTCzXdKKZe
         JxcXSX8MrXjl6lBrZ8YCEiY0CbsVmtjDQPbtNe5ygBMUAtZRHYifZTe6HbNJINvaqi60
         wOaBjU540QCfTv+nDE16sc0PIqVRCNKjmDfRIapE0eDLckhdlHsHiu4JvMdEd+9rN21F
         iuow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K6VNIQZqpTEWp15ReV527o5INwITNZFm9zSr5sR0frg=;
        b=SGONR6Qfrz5nAEL9/FlRAb94o4l8UoONgq/S3NRd3iG5yNVXfitVIit8UZkhs3acyA
         D1XiKEfRgwo/Bb0IxrK0BZG1BuOXaGdO0+lwmCwCwY05rdMBokSdyUbb6Izd932CHGev
         u2IhjI6sqg1LNFOragYzd6GjevGwSmzJ1idkEuAgA43I/v8/mwVhKJbLIgSJZjF4YwF0
         gZ3VH5Dsreh7F4psbKn6tjD+J7pE7gvDRYq4Wrde0c3lBhypbWUNk0uUi421ybwa/QS0
         EewsehKmEEKntoXRH1sOIMm4YKDuTB2clCLsXwzAgeVyM1wJkOqOzNWoa+m8cUXD5cFZ
         N55g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532J4MzIyz5ppTQ4m5XKgcir11zF79iUD2eI8h/RH9cvc1fa2Lac
	pwl1uVMpkudDt9udUcush7s=
X-Google-Smtp-Source: ABdhPJz/ZPK3Q8TVD7Ohlle4P+18ML5eqnI0mgGnV5KM3CUIWYzG67kIAh38RRz+fCCwH4/lFZPVOA==
X-Received: by 2002:aca:5347:: with SMTP id h68mr6495441oib.168.1594786654534;
        Tue, 14 Jul 2020 21:17:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4d:: with SMTP id e13ls193772otj.5.gmail; Tue, 14
 Jul 2020 21:17:34 -0700 (PDT)
X-Received: by 2002:a05:6830:ca:: with SMTP id x10mr7517614oto.61.1594786654201;
        Tue, 14 Jul 2020 21:17:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594786654; cv=none;
        d=google.com; s=arc-20160816;
        b=sP2wbm4yl5ZxTeiPlQl6qBWxQcRnVdEuKS2byVN+K0FODbYmue9Yh7tmYHRHO+3gXb
         y4Y7BO7whBDyE5oC5zaTx2V37/0PxHa2eIxs9HhSDYcDLN3pfIy/S0H1+YtNTSAf050p
         7hZ/0moV6Ko82znsDPaeoGDbiF76Q1zF6xLPy22RtbNZJI4QfujDsZbDRFrbSm4E+E1q
         JSvJK+K/ipFGixDPaHq7AT7n8uTQGwO4qKHsvD4nXodpHXJbv9nrZEtoolq2MUVc8inT
         4tW3CPQ2cxBOYmj0EowiyCs8Z13KMcqV0djf9AQNVbI6lVF1TX+J8hrzUQ5fP74N+46T
         RWIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aIUoX/lfRA4O2oRe87PMq1zQU6cl+9JxK87frUvGag0=;
        b=bZNviY1DMLxPU6y5fkS4YRKWXJZz6O72cw1KTbCHXLD3e8tpDdQk2a2Ur8FlU3fhX1
         mJBWbYMxAgcuKeNQR03xtMVBTlnbDLL1JAV18C47qO3PciFbCn9hUJ+m9xLPhcZb+J+W
         ei+GYehTpXNGAxV/kXSZ6nI/vC3xUIbeaq9TjLdRikWW/HoSNsqBOTxehtz+za2Vo92S
         sYnL2vKGOHc+XqSv9NiAmMb+fkTlnx67614JEUvWygyH5i/CcRBzOXcwJiQ23pNE5mIT
         3p7gmw0jxmbtYhqOG8ZlLiRpp2ecoXFp9q0v4kHSGzUy41GYXHbPtS4yYsRV2qte7yOq
         GqDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HvI0gTSp;
       spf=pass (google.com: domain of smfrench@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=smfrench@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id n25si77695otf.2.2020.07.14.21.17.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 21:17:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of smfrench@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id l19so519826ybl.1
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 21:17:34 -0700 (PDT)
X-Received: by 2002:a25:afd1:: with SMTP id d17mr13713909ybj.91.1594786653573;
 Tue, 14 Jul 2020 21:17:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200714221805.3459-1-lsahlber@redhat.com> <202007150917.me5MHt9a%lkp@intel.com>
In-Reply-To: <202007150917.me5MHt9a%lkp@intel.com>
From: Steve French <smfrench@gmail.com>
Date: Tue, 14 Jul 2020 23:17:22 -0500
Message-ID: <CAH2r5msN7gPvma9GFriSCYVVhWO3+ACBXeK9HW-e2TBvpxSFwg@mail.gmail.com>
Subject: Re: [PATCH] cifs: smb1: Try failing back to SetFileInfo if
 SetPathInfo fails
To: kernel test robot <lkp@intel.com>
Cc: Ronnie Sahlberg <lsahlber@redhat.com>, linux-cifs <linux-cifs@vger.kernel.org>, 
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: smfrench@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HvI0gTSp;       spf=pass
 (google.com: domain of smfrench@gmail.com designates 2607:f8b0:4864:20::b43
 as permitted sender) smtp.mailfrom=smfrench@gmail.com;       dmarc=pass
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

patch updated - and merged into cifs-2.6.git for-next pending additional review

On Tue, Jul 14, 2020 at 8:30 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Ronnie,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on cifs/for-next]
> [also build test WARNING on v5.8-rc5 next-20200714]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Ronnie-Sahlberg/cifs-smb1-Try-failing-back-to-SetFileInfo-if-SetPathInfo-fails/20200715-061927
> base:   git://git.samba.org/sfrench/cifs-2.6.git for-next
> config: arm64-randconfig-r005-20200714 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> fs/cifs/cifssmb.c:5917:1: warning: no previous prototype for function 'CIFSSMBSetPathInfoFB' [-Wmissing-prototypes]
>    CIFSSMBSetPathInfoFB(const unsigned int xid, struct cifs_tcon *tcon,
>    ^
>    fs/cifs/cifssmb.c:5916:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int
>    ^
>    static
>    1 warning generated.
> --
>    In file included from fs/cifs/cifssmb.c:40:
>    In file included from fs/cifs/cifsglob.h:32:
>    fs/cifs/smb2pdu.h:28:10: error: 'cifsacl.h' file not found with <angled> include; use "quotes" instead
>    #include <cifsacl.h>
>             ^~~~~~~~~~~
>             "cifsacl.h"
> >> fs/cifs/cifssmb.c:5917:1: warning: no previous prototype for function 'CIFSSMBSetPathInfoFB' [-Wmissing-prototypes]
>    CIFSSMBSetPathInfoFB(const unsigned int xid, struct cifs_tcon *tcon,
>    ^
>    fs/cifs/cifssmb.c:5916:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int
>    ^
>    static
>    1 warning and 1 error generated.
>
> vim +/CIFSSMBSetPathInfoFB +5917 fs/cifs/cifssmb.c
>
>   5915
>   5916  int
> > 5917  CIFSSMBSetPathInfoFB(const unsigned int xid, struct cifs_tcon *tcon,
>   5918                       const char *fileName, const FILE_BASIC_INFO *data,
>   5919                       const struct nls_table *nls_codepage,
>   5920                       struct cifs_sb_info *cifs_sb)
>   5921  {
>   5922          int oplock = 0;
>   5923          struct cifs_open_parms oparms;
>   5924          struct cifs_fid fid;
>   5925          int rc;
>   5926
>   5927          oparms.tcon = tcon;
>   5928          oparms.cifs_sb = cifs_sb;
>   5929          oparms.desired_access = GENERIC_WRITE;
>   5930          oparms.create_options = cifs_create_options(cifs_sb, 0);
>   5931          oparms.disposition = FILE_OPEN;
>   5932          oparms.path = fileName;
>   5933          oparms.fid = &fid;
>   5934          oparms.reconnect = false;
>   5935
>   5936          rc = CIFS_open(xid, &oparms, &oplock, NULL);
>   5937          if (rc)
>   5938                  goto out;
>   5939
>   5940          rc = CIFSSMBSetFileInfo(xid, tcon, data, fid.netfid, current->tgid);
>   5941          CIFSSMBClose(xid, tcon, fid.netfid);
>   5942  out:
>   5943
>   5944          return rc;
>   5945  }
>   5946
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Thanks,

Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAH2r5msN7gPvma9GFriSCYVVhWO3%2BACBXeK9HW-e2TBvpxSFwg%40mail.gmail.com.
