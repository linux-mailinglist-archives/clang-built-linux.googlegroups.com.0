Return-Path: <clang-built-linux+bncBDOLFXXV6YOBBDWZ6DXAKGQEAVQXQIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B7C109443
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 20:33:35 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id m8sf8470097qta.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 11:33:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574710414; cv=pass;
        d=google.com; s=arc-20160816;
        b=DoGKJQX16NodBrIaZWO4+Z/3NQmDOnskX4HGZTmsSotrlyrhTKElaDPbQucJF21ody
         Judi7yA2L6yfI2Gm6T/9YQRFZ2BoTPjXAjqKqzyM8barjmfAUu7T8LST6vCavWs0xQuL
         yjruA/9c/TRfMFoW0Z0fFp3O3YFKqX7dOQnL8aMkuFGNm4ZPsSHx+5aC8NHWyRBCtSxh
         sjTi0kBCl1oq8Kz89Dl7du0yKN5K3v4L8u5YfLR3KAhT8s8cW4FmKnwc/qDCne7wn6vV
         Zi6pOmlfRF5g1ir4255cOsRTDULQQP+DFjZyChEA1LErzd0rCix9KlyOInTPtruHVHI0
         UMWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=8HIAjOOwhBFL3Vf9mVRsm/QECbS0UI5lTf9IHhkC/Uw=;
        b=0PZySbLJxDk8f4U95X1UGI6UESQ/xr2qyoAXCPbuLDYKhicpsrutP2qc945jIlgAz2
         xZUkxKjklRZlJOZgFkRB2KcUjgq74a+KWIuV8TcyQjzMnjmZF5xf29XUSwZ4r0aMMZbn
         e6HhAyFib1YzmC/sc2OyuiMpUI7puVfD3VJVEQuFCkBgc2vs+P27QuMeotqmBD6HoZ9Y
         an9Z6mjAxbYXMQnml7mEVm+Lej3IoSprSysc3hrVJHIIhDv8c/LwgroqOWDI8K2Oh4l7
         HZpd1J/YLcohl3sQ2QyW9H//dz9+3u6E8LJ8B4asHhtvgzpgrOBsJw3/NKuCA7z/vLKX
         qNiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zw9j86qF;
       spf=pass (google.com: domain of navid.emamdoost@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=navid.emamdoost@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8HIAjOOwhBFL3Vf9mVRsm/QECbS0UI5lTf9IHhkC/Uw=;
        b=ZCcWKgppnfVnc5o+edin5MLAfH9tLGIxVBAXTw8t2ltXbaW9GlQfdgwzBH60XxtoY2
         AUyLSQLQrJtjA2gcBibx9dvLeySm5ZPPhI8dauyb7m7VjKfBbUxxOEQltz5RhJvqtJ+1
         XHT47F9I/6ZHpHykKcTsUd2Y9aZeqAtwsuLRJkMQs1s81hBBsjhaQm0Fqfz4Wb1ISFK8
         m62AT+YoQH4eFS9K6MaUc9SuNHAlYAQU8wNqyaKKBLnCRqEBv5BFX3+ipJnnXyrzG0HQ
         KeBpoXMb8YMcxciFU58K7owQ+PeEgtspSjhOK8Xw0rjunmHiPs9Sy9Forlfpxr5tZM3n
         rZsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8HIAjOOwhBFL3Vf9mVRsm/QECbS0UI5lTf9IHhkC/Uw=;
        b=jIHrXtZZ0p/PG3RD10MwcBP6MRJ9Yrj9nSILMCYGz4yNQT1auifks0w6QujulwuihH
         aik5cWbpbMwNWjvv6L/iitqSsOVBpJKjpsfJt3LdNH+hPOG+n25LDOHr/g76uMM9K8tO
         UICzXL7hys2gaDEmwWewiuYDDrWrfSgtzRyuShiIq9Hfw2UgKEMoqIRWRPnp0C5hQBKR
         vhznmSzTk/NF6igLT0hsu1/MdKdvlqAVIWRRONlH2/WV8if916/Wg1Yfemde0cShTM9C
         xjBwTn281pDRpiUP6WCIyzv/cQYE40MCdHIMf3HQhTd9Pv86eMDWYaMZSNXwgrlNS/uS
         h9XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8HIAjOOwhBFL3Vf9mVRsm/QECbS0UI5lTf9IHhkC/Uw=;
        b=Dloaum2477pt0m5MoSzRWtzbLGOirAxYvFK25qWU8jPc57IwQlIQqhkzM1CvyPGput
         Jo8AyvuX/Kp3F/hZfH0tVyLJnWa3aBiDrVVjDlcNg1DiAvmRhPA66rV0+hkilU0FK2dS
         aM1NNSogzaUUb/eANyqk9ZtdlYZudoXa4GMv5HTvPaWHdS7R168vjqYwktjFjk1QYO4o
         Yfl/KbXFLt5Q/PM16EhqYeru1YK/5tKqeH/Ep8VaBHp9qY1moC2k1d6KkH0mePWOzfcF
         bU98c2Qdul6/gcEZZutoyP0z5rK5MYiXi7y+TPpl16BlCvyLk+8fywjQKLraoDeyaEn3
         5jLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV1U/yp3xx239t3yPs7/GaAZSzNu0zqFZGcMrVXBmPfo0pGBUMu
	9kadFwZy6qqUwzR4BTum1OA=
X-Google-Smtp-Source: APXvYqwzQyP7HJVFa3xmPYlkN48jbpKXcZ9lCvdA1O093blTBEDyl/I9sOmwNvFgYB3fZoAVv3O3oQ==
X-Received: by 2002:a37:9d86:: with SMTP id g128mr16275406qke.191.1574710414618;
        Mon, 25 Nov 2019 11:33:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:47ab:: with SMTP id a11ls3086550qvz.7.gmail; Mon, 25 Nov
 2019 11:33:34 -0800 (PST)
X-Received: by 2002:a0c:8c0e:: with SMTP id n14mr29018434qvb.179.1574710414219;
        Mon, 25 Nov 2019 11:33:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574710414; cv=none;
        d=google.com; s=arc-20160816;
        b=arujhVmFeEYm8jPCC9Hlv9ZIiZOBjj8snR/0qWIJGuJm/fVdyRd79udIlYizehL2ip
         DfwCqyl/spMfXG+zRcemlk++zzOsrGbgUAQsTEmWD6T/VskgVg52EgOeLrMu9FrTl1Ga
         ax+9q1vCYtage9pMIVchJy12GKtnIS4Myw0WjYWBNSs8WwKaiUzhyBOgNgxY4nvYVfFw
         jyp2qIvYhWcLOfMATspxhgLD23+gUVlu8ljrLuIe4oe4d163djFtVSg5v6qsdjT+hDTH
         EU4jBedwikZ//7VV5S49839NeEroDs/d52+AbUb+2O/M+byFmBT3QBeZg3H58I2U3miB
         aD8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mFQ2uM8eUtm7aXuPr+Kb3DaM5rrKzlYcHWCzrXEycX0=;
        b=uBdrDjQLZEGeypf4fvNGT4X1sFQu/LeRNQyZ33a++TqD2Jwj7vZ1Mdel9TsM5qeZDK
         Ou5S5m7+fas6nvk752qslKgw+LTeMhWXLqeroMuY2g4UlvQlkPHyBvcGt9GOwREzqqpM
         kiknD5DlWkXbfOpI7dA/gi8qzjdjuV/8mGOxh5gs77vkkllznhHIU2aIw8cwsoYlV20Y
         cl344Yt3ngBhNMNr3BiLX+qjoCvTorCjF/cDBdfau02mapUjEZbxi2aOhOXqJzi+t0a5
         0ao+kFVMx6MaxNUgnpu2dZ21rV0Mxfq7Ubp0YEztcWjnyd4+PvTHHORiFWa840dHgxyt
         IO7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zw9j86qF;
       spf=pass (google.com: domain of navid.emamdoost@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=navid.emamdoost@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id r28si314949qtu.0.2019.11.25.11.33.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2019 11:33:34 -0800 (PST)
Received-SPF: pass (google.com: domain of navid.emamdoost@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id p12so10259654iog.10
        for <clang-built-linux@googlegroups.com>; Mon, 25 Nov 2019 11:33:34 -0800 (PST)
X-Received: by 2002:a6b:8d09:: with SMTP id p9mr28965302iod.227.1574710413296;
 Mon, 25 Nov 2019 11:33:33 -0800 (PST)
MIME-Version: 1.0
References: <20191122193138.19278-1-navid.emamdoost@gmail.com> <20191125180448.GA39139@ubuntu-x2-xlarge-x86>
In-Reply-To: <20191125180448.GA39139@ubuntu-x2-xlarge-x86>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Mon, 25 Nov 2019 13:33:21 -0600
Message-ID: <CAEkB2EQP-bMOcF0MmrtaV4dYrrMxyjMj+y3vgdaKJafeEW9ypw@mail.gmail.com>
Subject: Re: [PATCH] PCI/IOV: Fix memory leak in pci_iov_add_virtfn()
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, Navid Emamdoost <emamd001@umn.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: Navid.Emamdoost@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Zw9j86qF;       spf=pass
 (google.com: domain of navid.emamdoost@gmail.com designates
 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=navid.emamdoost@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Nathan,

On Mon, Nov 25, 2019 at 12:04 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Nov 22, 2019 at 01:31:36PM -0600, Navid Emamdoost wrote:
> > In the implementation of pci_iov_add_virtfn() the allocated virtfn is
> > leaked if pci_setup_device() fails. The error handling is not calling
> > pci_stop_and_remove_bus_device(). Change the goto label to failed2.
> >
> > Fixes: 156c55325d30 ("PCI: Check for pci_setup_device() failure in pci_=
iov_add_virtfn()")
> > Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> > ---
> >  drivers/pci/iov.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/pci/iov.c b/drivers/pci/iov.c
> > index b3f972e8cfed..713660482feb 100644
> > --- a/drivers/pci/iov.c
> > +++ b/drivers/pci/iov.c
> > @@ -164,7 +164,7 @@ int pci_iov_add_virtfn(struct pci_dev *dev, int id)
> >
> >       rc =3D pci_setup_device(virtfn);
> >       if (rc)
> > -             goto failed1;
> > +             goto failed2;
> >
> >       virtfn->dev.parent =3D dev->dev.parent;
> >       virtfn->multifunction =3D 0;
> > --
> > 2.17.1
> >
>
> Hi Navid,
>
> This patch causes a Clang warning about failed1 no longer being a used
> label, as shown by this 0day build report. Would you please look into it
> and address it in the same patch so there is not a warning regression?
>

Sure I will prepare a v2.

> Cheers,
> Nathan
>
> On Mon, Nov 25, 2019 at 07:20:46AM +0800, kbuild test robot wrote:
> > CC: kbuild-all@lists.01.org
> > In-Reply-To: <20191122193138.19278-1-navid.emamdoost@gmail.com>
> > References: <20191122193138.19278-1-navid.emamdoost@gmail.com>
> > TO: Navid Emamdoost <navid.emamdoost@gmail.com>
> > CC: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, lin=
ux-kernel@vger.kernel.org, emamd001@umn.edu, Navid Emamdoost <navid.emamdoo=
st@gmail.com>, emamd001@umn.edu, Navid Emamdoost <navid.emamdoost@gmail.com=
>
> > CC: emamd001@umn.edu, Navid Emamdoost <navid.emamdoost@gmail.com>
> >
> > Hi Navid,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on pci/next]
> > [also build test WARNING on v5.4-rc8 next-20191122]
> > [if your patch is applied to the wrong git tree, please drop us a note =
to help
> > improve the system. BTW, we also suggest to use '--base' option to spec=
ify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/3=
7406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Navid-Emamdoost/PCI-IO=
V-Fix-memory-leak-in-pci_iov_add_virtfn/20191125-020946
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git=
 next
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 844d97f650=
a2d716e63e3be903c32a82f2f817b1)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=3Darm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/pci/iov.c:204:1: warning: unused label 'failed1' [-Wunused-l=
abel]
> >    failed1:
> >    ^~~~~~~~
> >    1 warning generated.
> >
> > vim +/failed1 +204 drivers/pci/iov.c
> >
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  135
> > 753f612471819d3 Jan H. Sch=C3=B6nherr 2017-09-26  136  int pci_iov_add_=
virtfn(struct pci_dev *dev, int id)
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  137  {
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  138      int i;
> > dc087f2f6a2925e Jiang Liu        2013-05-25  139      int rc =3D -ENOME=
M;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  140      u64 size;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  141      char buf[VIRTFN_I=
D_LEN];
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  142      struct pci_dev *v=
irtfn;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  143      struct resource *=
res;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  144      struct pci_sriov =
*iov =3D dev->sriov;
> > 8b1fce04dc2a221 Gu Zheng         2013-05-25  145      struct pci_bus *b=
us;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  146
> > b07579c0924eee1 Wei Yang         2015-03-25  147      bus =3D virtfn_ad=
d_bus(dev->bus, pci_iov_virtfn_bus(dev, id));
> > dc087f2f6a2925e Jiang Liu        2013-05-25  148      if (!bus)
> > dc087f2f6a2925e Jiang Liu        2013-05-25  149              goto fail=
ed;
> > dc087f2f6a2925e Jiang Liu        2013-05-25  150
> > dc087f2f6a2925e Jiang Liu        2013-05-25  151      virtfn =3D pci_al=
loc_dev(bus);
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  152      if (!virtfn)
> > dc087f2f6a2925e Jiang Liu        2013-05-25  153              goto fail=
ed0;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  154
> > b07579c0924eee1 Wei Yang         2015-03-25  155      virtfn->devfn =3D=
 pci_iov_virtfn_devfn(dev, id);
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  156      virtfn->vendor =
=3D dev->vendor;
> > 3142d832af10d8c Filippo Sironi   2017-08-28  157      virtfn->device =
=3D iov->vf_device;
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  158      virtfn->is_virtfn=
 =3D 1;
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  159      virtfn->physfn =
=3D pci_dev_get(dev);
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  160
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  161      if (id =3D=3D 0)
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  162              pci_read_=
vf_config_common(virtfn);
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  163
> > 156c55325d30261 Po Liu           2016-08-29  164      rc =3D pci_setup_=
device(virtfn);
> > 156c55325d30261 Po Liu           2016-08-29  165      if (rc)
> > 59fb9307eee20d6 Navid Emamdoost  2019-11-22  166              goto fail=
ed2;
> > 156c55325d30261 Po Liu           2016-08-29  167
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  168      virtfn->dev.paren=
t =3D dev->dev.parent;
> > aa9319773619c9d Alex Williamson  2014-01-09  169      virtfn->multifunc=
tion =3D 0;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  170
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  171      for (i =3D 0; i <=
 PCI_SRIOV_NUM_BARS; i++) {
> > c1fe1f96e30d31c Bjorn Helgaas    2015-03-25  172              res =3D &=
dev->resource[i + PCI_IOV_RESOURCES];
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  173              if (!res-=
>parent)
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  174                      c=
ontinue;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  175              virtfn->r=
esource[i].name =3D pci_name(virtfn);
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  176              virtfn->r=
esource[i].flags =3D res->flags;
> > 0e6c9122a6ec96d Wei Yang         2015-03-25  177              size =3D =
pci_iov_resource_size(dev, i + PCI_IOV_RESOURCES);
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  178              virtfn->r=
esource[i].start =3D res->start + size * id;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  179              virtfn->r=
esource[i].end =3D virtfn->resource[i].start + size - 1;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  180              rc =3D re=
quest_resource(res, &virtfn->resource[i]);
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  181              BUG_ON(rc=
);
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  182      }
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  183
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  184      pci_device_add(vi=
rtfn, virtfn->bus);
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  185
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  186      sprintf(buf, "vir=
tfn%u", id);
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  187      rc =3D sysfs_crea=
te_link(&dev->dev.kobj, &virtfn->dev.kobj, buf);
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  188      if (rc)
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  189              goto fail=
ed2;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  190      rc =3D sysfs_crea=
te_link(&virtfn->dev.kobj, &dev->dev.kobj, "physfn");
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  191      if (rc)
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  192              goto fail=
ed3;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  193
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  194      kobject_uevent(&v=
irtfn->dev.kobj, KOBJ_CHANGE);
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  195
> > 27d6162944b9b34 Stuart Hayes     2017-10-04  196      pci_bus_add_devic=
e(virtfn);
> > 27d6162944b9b34 Stuart Hayes     2017-10-04  197
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  198      return 0;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  199
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  200  failed3:
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  201      sysfs_remove_link=
(&dev->dev.kobj, buf);
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  202  failed2:
> > cf0921bea66c556 KarimAllah Ahmed 2018-03-19  203      pci_stop_and_remo=
ve_bus_device(virtfn);
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20 @204  failed1:
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  205      pci_dev_put(dev);
> > dc087f2f6a2925e Jiang Liu        2013-05-25  206  failed0:
> > dc087f2f6a2925e Jiang Liu        2013-05-25  207      virtfn_remove_bus=
(dev->bus, bus);
> > dc087f2f6a2925e Jiang Liu        2013-05-25  208  failed:
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  209
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  210      return rc;
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  211  }
> > dd7cc44d0bcec5e Yu Zhao          2009-03-20  212
> >
> > :::::: The code at line 204 was first introduced by commit
> > :::::: dd7cc44d0bcec5e9c42fe52e88dc254ae62eac8d PCI: add SR-IOV API for=
 Physical Function driver
> >
> > :::::: TO: Yu Zhao <yu.zhao@intel.com>
> > :::::: CC: Jesse Barnes <jbarnes@virtuousgeek.org>
> >
> > ---
> > 0-DAY kernel test infrastructure                 Open Source Technology=
 Center
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corp=
oration



--=20
Navid.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEkB2EQP-bMOcF0MmrtaV4dYrrMxyjMj%2By3vgdaKJafeEW9ypw%40m=
ail.gmail.com.
