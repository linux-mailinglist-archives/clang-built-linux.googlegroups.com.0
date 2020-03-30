Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK6HRD2AKGQECDU6GWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8815C1981AB
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 18:51:56 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id w3sf13417465plz.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 09:51:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585587115; cv=pass;
        d=google.com; s=arc-20160816;
        b=ufcgVnf8NJqkhxbNxjQpAiq3I8tMGH53kbGxweqykwZg9djk4MUJ1bTkx5GTPx1o5f
         Diln/g7JrLKrA/QJeIFWliwthq3aL4sqwdPCbJG0D7nF+vQGeioK1eDirv2GunbueYRQ
         nznl8TQBXxrGRmjicGF5JDN4iTYBLC3gXuVNpYkIiRIkUwbmQi8CD/gv4iYh7qwedKTH
         qijf3z01bzFJWVTrajpLvvSdR5WnzVsXKrdM6A41jrqdquMdHk2DiiAxhyDKyXdVYQhD
         GiKXw1AYnFaWKY+EvGyHHpvZTv2klRcY6PoBs08KviIitcMXd4whGkfkBiOGq4dEVlWx
         I4zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=O5r3+R3Azk/+9panoxmLjmJnoy5oijDON0bIiiarpIE=;
        b=nSnNgm8pZrFTglyrUE/fjGV+FjCcDKZQGQ6ZjuhfgGt33gsVHyjakZkrWKIO32ARU4
         kZZ2TRo67ZhbXrZPDUtThSRdUImDWAG51Jdb0DVR/fXaaYtUW1HignnhIEL4lqBdaL7u
         SVbN6AyDm3cOiDvxS7sDMRkzLt2L/oo061Gbro89TSVo6JQ+qeBYzn1slvfFNCZzY378
         rVcn7oAhIvboZY//asPe/D6KzfbcxTnBcXY9zeTF6pHSSVpP7CKh4RxwrX2gzLf9PeKc
         5ji5BPFujRXEhu5XRsM52znA1+WNcIRxZeJF104rB+UEJO0cyKgc0sG4GtIkUQA5aiiZ
         qm+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EK8sREFU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O5r3+R3Azk/+9panoxmLjmJnoy5oijDON0bIiiarpIE=;
        b=Comn5EKNH1x6cmFBA2y/+FZlbGnIhqgoqxqVPz9iIFksSQjmSCJ8p9y8TWZa5kmlNm
         ybP7RfZTdNxuI0Peppqu1LSyW3qVUL2dEXGrz2uE/uEazLaWpyAB2o2qtsBq7WB/c3+J
         XxxSMiDtam8mPhqD+etlU3MEg9qslqE/NCD9lLYh/nqB52ejWsWx/rgArNI48NPBBmvr
         mUHJho3jvmpgzsaIrodYWRsE6p0ymnPwyM4VLQu47N1H0+cs3UCy6E9w8FvzOzec6h96
         48kxztRzFI5M8Wy3VhOsuw5Nk8xu5k76PUvom5r/eXL8ab9039Zf1Ub1qNp3HzHTS7x0
         FfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O5r3+R3Azk/+9panoxmLjmJnoy5oijDON0bIiiarpIE=;
        b=Tpe51B1InY6oTeOozCbu3TJ37BtW8XCyA8z2ofFdLkV5/Q27ZTlQNxnDn/uwFeDten
         8sWjgy3sVzSMB57l6hocnTrDLrajagZmjkXxUdEywC2zYjeVPazu2K1jCa0Bu94aMYBt
         q8QxxrSTl1y4TgBKveRii4SnDaSmwOz0nOPwcuU3A08fYbWE3M74wkpe5BjpvzXB9fBt
         iaKfPMWkJYRwZDdm1FMolHlaA3QoLYQv2/jyBfn9yJ/nYTiDJBo3nsicQoiUNELYxN9F
         i0TD1pWpsPPH5m0YUPw/gMMdaGVnfrU5TsFACeB7C22xUZsdqce7oXLY1OdiMBRYDwUy
         2jnQ==
X-Gm-Message-State: AGi0PuZQ8PVW6WjOiSaOjIgfwtIgQf7KC2446eMcAz9wSQSAMdLVvpBb
	6rLwFYtbrWkk1Q4v5CAmC70=
X-Google-Smtp-Source: APiQypJeAemq+Jl5ahMdpp5kGc8YZKi3vc6tjZbVHVd+PbXAM8LOWc38mh3Cltr/0sABfTcw/CFysw==
X-Received: by 2002:a63:64c4:: with SMTP id y187mr52392pgb.36.1585587115213;
        Mon, 30 Mar 2020 09:51:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls12118514pfy.11.gmail; Mon, 30
 Mar 2020 09:51:54 -0700 (PDT)
X-Received: by 2002:a63:a601:: with SMTP id t1mr13738595pge.23.1585587114803;
        Mon, 30 Mar 2020 09:51:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585587114; cv=none;
        d=google.com; s=arc-20160816;
        b=iPckgdBdf6/SMb1yZgTjM52Nu+eAvjm3AumBmFNBYwtca4zD6kguITZIFTQxPMkwAV
         eCzTQQWll7qjysmaGKXub3gaCMRabitQtLZcHhdlghClwlxj0GuATg7ssTBtghavbg5Y
         rkS00T2gkgODwwMTG2yg55C2Ju63eVblVTyM/Sm9XkgXPb1hVANsnE3Y3Wk8JoKesrkz
         Wz/eUrEE/FdR8/J90Y8RIhz1GRnb7aFggqGtp9SnF92k8wWcg/aikMSYz5JdwVwBdzfk
         Fp2wYQN88B0lrodcN4utDpHfXBoA4n2YqxnEW9fiBZMP86zkSt54xlF+eZuiJIKpzY2E
         nAlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aLV+OA7NswcSpcRp5zK3H2qQIrq9TzUdJBNcxTbI9Bc=;
        b=Ga/EEvcmd5iJjjDDE2mYEA2IwEUEEL1k4CNJKf5IdwbJHTKEpBL/enJuXBgT8SB/p2
         3Nas+2eXHtENYmCluPQ9YnOCqqQCSoKHvLiVQwUzkoeSWsBb9zAxbmULAhCrgdhXBHZZ
         kQjNQDS9+R6e7oAI/q5EII4Mh1xbHQg/Zyc1P/8jKgLEYrmSAdEe1Dsj0MZDdx127Ily
         aAbRMG2sAsYBnFqkTpV2+u2Mn991+4mfgPfWYT6YzqkwKq6G8RCiHW1/vkofCBa8xAUD
         VENClZuKIW5cm25enAzOMZSVT5KtS31TJK/q4JGDtXXU1VrHEdPLqpMXUKuyVWf97DgW
         regw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EK8sREFU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u14si34646pjn.2.2020.03.30.09.51.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:51:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 22so8859731pfa.9
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 09:51:54 -0700 (PDT)
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr13628743pfk.108.1585587114191;
 Mon, 30 Mar 2020 09:51:54 -0700 (PDT)
MIME-Version: 1.0
References: <202003290223.P0IbgBYa%lkp@intel.com> <20200328182304.GA70832@google.com>
In-Reply-To: <20200328182304.GA70832@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Mar 2020 09:51:43 -0700
Message-ID: <CAKwvOdkBYH1MFncDPnPG_squJmVYKDD82szCr6WFnQHOjGkE+g@mail.gmail.com>
Subject: Re: [pci:pci/edr 4/10] drivers/pci/pcie/err.c:168:28: error: use of
 undeclared identifier 'service'
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: kbuild test robot <lkp@intel.com>, 
	Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EK8sREFU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Sat, Mar 28, 2020 at 11:23 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Sun, Mar 29, 2020 at 02:09:30AM +0800, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git pci/edr
> > head:   3a4c9f97543f0dbf580dd3646164e829ba08e600
> > commit: d9dbf5828770b236fcae3cc866d844fe360174d0 [4/10] PCI/ERR: Remove service dependency in pcie_do_recovery()
> > config: x86_64-defconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 0fca766458da04bbc6d33b3f9ecd57e615c556c1)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout d9dbf5828770b236fcae3cc866d844fe360174d0
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> drivers/pci/pcie/err.c:168:28: error: use of undeclared identifier 'service'
> >                    status = reset_link(dev, service);
>
> My merge error, sorry.  This is on a test branch (pci/edr), not in my
> -next branch yet.

FWIW: https://github.com/intel/lkp-tests/wiki/LKP-FAQ#is-there-a-way-not-to-trigger-kbuild-tests-on-a-specific-branch

>
> >                                             ^
> >    1 error generated.
> >
> > vim +/service +168 drivers/pci/pcie/err.c
> >
> > 2e28bc84cf6eec Oza Pawandeep              2018-05-17  148
> > d9dbf5828770b2 Kuppuswamy Sathyanarayanan 2020-03-23  149  void pcie_do_recovery(struct pci_dev *dev,
> > d9dbf5828770b2 Kuppuswamy Sathyanarayanan 2020-03-23  150                   enum pci_channel_state state,
> > d9dbf5828770b2 Kuppuswamy Sathyanarayanan 2020-03-23  151                   pci_ers_result_t (*reset_link)(struct pci_dev *pdev))
> > 2e28bc84cf6eec Oza Pawandeep              2018-05-17  152  {
> > 542aeb9c8f930e Keith Busch                2018-09-20  153     pci_ers_result_t status = PCI_ERS_RESULT_CAN_RECOVER;
> > 542aeb9c8f930e Keith Busch                2018-09-20  154     struct pci_bus *bus;
> > 2e28bc84cf6eec Oza Pawandeep              2018-05-17  155
> > bfcb79fca19d26 Keith Busch                2018-09-20  156     /*
> > bfcb79fca19d26 Keith Busch                2018-09-20  157      * Error recovery runs on all subordinates of the first downstream port.
> > bfcb79fca19d26 Keith Busch                2018-09-20  158      * If the downstream port detected the error, it is cleared at the end.
> > bfcb79fca19d26 Keith Busch                2018-09-20  159      */
> > bfcb79fca19d26 Keith Busch                2018-09-20  160     if (!(pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT ||
> > bfcb79fca19d26 Keith Busch                2018-09-20  161           pci_pcie_type(dev) == PCI_EXP_TYPE_DOWNSTREAM))
> > bfcb79fca19d26 Keith Busch                2018-09-20  162             dev = dev->bus->self;
> > 542aeb9c8f930e Keith Busch                2018-09-20  163     bus = dev->subordinate;
> > bfcb79fca19d26 Keith Busch                2018-09-20  164
> > 542aeb9c8f930e Keith Busch                2018-09-20  165     pci_dbg(dev, "broadcast error_detected message\n");
> > b5dfbeacf74865 Kuppuswamy Sathyanarayanan 2020-03-27  166     if (state == pci_channel_io_frozen) {
> > 542aeb9c8f930e Keith Busch                2018-09-20  167             pci_walk_bus(bus, report_frozen_detected, &status);
> > 6d2c89441571ea Kuppuswamy Sathyanarayanan 2020-03-23 @168             status = reset_link(dev, service);
> >
> > :::::: The code at line 168 was first introduced by commit
> > :::::: 6d2c89441571ea534d6240f7724f518936c44f8d PCI/ERR: Update error status after reset_link()
> >
> > :::::: TO: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
> > :::::: CC: Bjorn Helgaas <bhelgaas@google.com>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200328182304.GA70832%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkBYH1MFncDPnPG_squJmVYKDD82szCr6WFnQHOjGkE%2Bg%40mail.gmail.com.
