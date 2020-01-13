Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWWJ6LYAKGQE7YHGMQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 35899139733
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 18:11:56 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id 65sf6331147qkl.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 09:11:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578935515; cv=pass;
        d=google.com; s=arc-20160816;
        b=EYQcB9C5FjnAs7o1gMmjJBvI286wssT4WdS0236XHSNHRfCgOcGCZ/unEE8iOFfCUd
         f5P0aBnYhUlSydnuznW4Y9GSkzwVBllJgUMfI0L8cFTpixAfHS9Dp0l9rUe5C8fa5Tq3
         aRalu4xNABuc2BQUvdHWMjaehWwwTMOzEQCBPDA5Jt2PV9kUw9sGnl8iFWiw20P1MN+x
         ImWth25MZ3+/uNACW0d4yQ89KG9NOcbaj431EwKdWmipQtNrL/LLxjitb7vxYKBOgvRV
         w3SYJhM8Exn0FTmBY2BsnZrx9JR5OUETMQFqvxivZgTxQUEcdT1JLHlsiQZlm2sB2fBK
         cIIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yBBjOjKaLHhN2UlOLzjLL9XwA4UDmMsZpcF3x9cf48I=;
        b=DPivT5tqxtUFKTnR1RMNqo6W7z4UtkyAQhl0BdoiecJsqcyOXfL702DFg7Fcz7/mU7
         iO1VZwX1Mvyct2s3911j4yvq72NhDT/sG5+MyzkOxA73eg4GYd7iNuTgx7dvvTzuGi99
         kDQ94H88pSb6IOwqX7kZtSATgESNF7WagNpfrfN6laYBwL1HQfjNKMZp+jUkljFoXAA4
         2XMT3kCn5JWJWKgD/WmeBvLpIMlV6oTMZ2KLfiwd9hVSKT9LypTjws5vgGS1TICaK1dB
         PP1/gDJMot37KizqAjvRvWj6GHKlXuLAqZObYAHtEx09z2x3Bnqk7mZxh+LbP1lOBAXC
         mkwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="tSgRZ//k";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yBBjOjKaLHhN2UlOLzjLL9XwA4UDmMsZpcF3x9cf48I=;
        b=lQnR8GtYdTWzNkFZtMC7K6gC00IWxVyDKzFvc3dh0hrjo5qtQPi4lW2fl/BwSl8Vy7
         0wE29OTB2w/IKV24Ajxa4NGTFm3zrSaUIsUcr/tqBlI1Mrqwi2DMhWgwfOiJUPM0XBEG
         bfPtBlwA6L4uZo+UIjm3Zk99giRVQmiz6R9Grtf2GyymE4rJFQEUITVAbIoDlpdqSBq5
         nA/yqd2LlfelNRX0juUZsAxsA3m4f/Sm7q8Z7Kl1JQL4UXh/OyNyO6AmwyzTUnFTmX1X
         E8xvqXOQ2wIICwHzUrsJ8B4WAls9ZAWnNz8mrn8qShwSePfM7GLuMfmgIkz2Nov813An
         Os0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yBBjOjKaLHhN2UlOLzjLL9XwA4UDmMsZpcF3x9cf48I=;
        b=UseFPSo7LdON5qEcn1WF9R5L1L9dyPpUdgneL6MgEWatc2NZEQ4RV4DQTyCpARSqhn
         XLTNKS379EVLly7XQBw0OHv/NhuBTGkzls9bWk2IDVXdShrifu2tGUFLg29I0sJmtKz7
         9adOWO7b7BigTK3ovumJldL6Bai3sKYDpjrgvXYH3HaWIVIuKVqaci62npAx/fLu1bhM
         mtVrQ4WECHqKfDG48klmB7y96WI96+LolOpnetCsixPprz1/jkpO1VtohkzPpo63fE1q
         IQ7WVBpD714bwgwOupI7gNAcmG7RKEN4dF7A/x8qMPOtVjpiZqKIliclsvBoy9E9Vz3H
         DXOQ==
X-Gm-Message-State: APjAAAVi2McoUyHRI9PGDFgYcAE9RURSqYI2YvWUsTm3coRtw6oBefMW
	MJfvj2oledfcgU9S7z6rRHc=
X-Google-Smtp-Source: APXvYqyBfUbRTUNuVyeiCUYVpI6SGxGsaCxdiu211p78MIpZSeZyF/Be1n+HZTIqgPWCDg3GOyBlDQ==
X-Received: by 2002:ac8:5457:: with SMTP id d23mr10523035qtq.93.1578935514940;
        Mon, 13 Jan 2020 09:11:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:350c:: with SMTP id y12ls1236807qtb.10.gmail; Mon, 13
 Jan 2020 09:11:54 -0800 (PST)
X-Received: by 2002:aed:2202:: with SMTP id n2mr15544339qtc.4.1578935514507;
        Mon, 13 Jan 2020 09:11:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578935514; cv=none;
        d=google.com; s=arc-20160816;
        b=jw0rhrpwpSt91p3vjt4n3NqllB7cUr5qaQxqueHIxn4XEOOMNeabndR2ntSei/r5Ox
         mFtbTeipYYAd9Z1StZXk5jOi/geXa4Hu+7x9MCJxQr7TBLMJLiHpWDJ1vzzu4iGslEXo
         qITWeXgbsZUOZlhJH8BCZOVeuGqs5/GtIJsUcFVoKhk1k3cW83YKzrwrBEnWg2T3MQ3X
         Ni7ky6GhYk+bZcFMexvAWCuec9RBKu2sZex4mH9dtyk7v9dIcaR/W0GC3jyoZ9c4trwQ
         J0fVIhUTbBUv1ILGOxQ/7nBmR3aDi8JGoh8Ivi+qz2TK1aZ/fTZFWKTn+UpWL6lqDN4a
         f89g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=TxozZcV9sMOrMojIFRq55NmVEWRnbpuMmipG2qFs8v0=;
        b=KGOp5vKQBt9BE/nZ8dGzEuZLa7KF/A5sJt3Cwbx/1CAuSyXNL+wVfDqZiq1WAIFpt2
         Qri7v6mJBsFLpreHji6ALTKl2dE1aNj3w+ihXRzfdA/t5FtkitVShKZUeIz5qh4stEfD
         6bIimmcL0TAbO21gJmGd+7dYJIIGgNbYyanlmFgVF5VXFRA1EzoeDK1v6JMQFgrzAdaa
         hqw0O9VCRFi2Ym06Bt98ab3DhagVaZE10zsP/UTS0bopxEzt6bcQlDSAp2g/muoLvPmZ
         3B6sZDBdlw8LSdfLDyi5Bkjvi4edoN3YfONA4jWWeTZ11ZRh7DvGEOYXUBsslnHJxnI/
         XVtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="tSgRZ//k";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i53si545608qte.2.2020.01.13.09.11.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2020 09:11:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 195so5146040pfw.11
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jan 2020 09:11:54 -0800 (PST)
X-Received: by 2002:a63:590e:: with SMTP id n14mr21403612pgb.10.1578935513283;
 Mon, 13 Jan 2020 09:11:53 -0800 (PST)
MIME-Version: 1.0
References: <202001112351.gy4c3aUU%lkp@intel.com>
In-Reply-To: <202001112351.gy4c3aUU%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jan 2020 09:11:41 -0800
Message-ID: <CAKwvOdnRhSXviJ3VGUJbB7XEjSXuTTKJOT8O1crOE6F0F=oJmA@mail.gmail.com>
Subject: Re: [PATCH v3] xen-pciback: optionally allow interrupt enable flag writes
To: marmarek@invisiblethingslab.com
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org, xen-devel@lists.xenproject.org, jbeulich@suse.com, 
	simon@invisiblethingslab.com, Boris Ostrovsky <boris.ostrovsky@oracle.com>, 
	Juergen Gross <jgross@suse.com>, sstabellini@kernel.org, yuehaibing@huawei.com, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="tSgRZ//k";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

Hi Marek,
Below is a report from 0day bot build w/ Clang. The warning looks
legit, can you please take a look? Apologies if this has already been
reported.

On Sat, Jan 11, 2020 at 7:48 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20200111034347.5270-1-marmarek@invisiblethingslab.com>
> References: <20200111034347.5270-1-marmarek@invisiblethingslab.com>
> TO: "Marek Marczykowski-G=C3=B3recki" <marmarek@invisiblethingslab.com>
> CC: xen-devel@lists.xenproject.org, "Marek Marczykowski-G=C3=B3recki" <ma=
rmarek@invisiblethingslab.com>, Jan Beulich <jbeulich@suse.com>, Simon Gais=
er <simon@invisiblethingslab.com>, Boris Ostrovsky <boris.ostrovsky@oracle.=
com>, Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kern=
el.org>, YueHaibing <yuehaibing@huawei.com>, open list <linux-kernel@vger.k=
ernel.org>, "Marek Marczykowski-G=C3=B3recki" <marmarek@invisiblethingslab.=
com>, Jan Beulich <jbeulich@suse.com>, Simon Gaiser <simon@invisiblethingsl=
ab.com>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross <jgros=
s@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, YueHaibing <yueha=
ibing@huawei.com>, open list <linux-kernel@vger.kernel.org>
> CC: "Marek Marczykowski-G=C3=B3recki" <marmarek@invisiblethingslab.com>, =
Jan Beulich <jbeulich@suse.com>, Simon Gaiser <simon@invisiblethingslab.com=
>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse=
.com>, Stefano Stabellini <sstabellini@kernel.org>, YueHaibing <yuehaibing@=
huawei.com>, open list <linux-kernel@vger.kernel.org>
>
> Hi "Marek,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on xen-tip/linux-next]
> [also build test WARNING on linux/master linus/master v5.5-rc5 next-20200=
110]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>
> url:    https://github.com/0day-ci/linux/commits/Marek-Marczykowski-G-rec=
ki/xen-pciback-optionally-allow-interrupt-enable-flag-writes/20200111-16224=
3
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/xen/tip.git linux=
-next
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 016bf03ef6fc=
d9dce43b0c17971f76323f07a684)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/xen/xen-pciback/conf_space_header.c:121:19: warning: variable =
'val' is uninitialized when used here [-Wuninitialized]
>                    if ((cmd->val ^ val) & PCI_COMMAND_INTX_DISABLE) {
>                                    ^~~
>    drivers/xen/xen-pciback/conf_space_header.c:65:9: note: initialize the=
 variable 'val' to silence this warning
>            u16 val;
>                   ^
>                    =3D 0
>    1 warning generated.
>
> vim +/val +121 drivers/xen/xen-pciback/conf_space_header.c
>
>     60
>     61  static int command_write(struct pci_dev *dev, int offset, u16 val=
ue, void *data)
>     62  {
>     63          struct xen_pcibk_dev_data *dev_data;
>     64          int err;
>     65          u16 val;
>     66          struct pci_cmd_info *cmd =3D data;
>     67
>     68          dev_data =3D pci_get_drvdata(dev);
>     69          if (!pci_is_enabled(dev) && is_enable_cmd(value)) {
>     70                  if (unlikely(verbose_request))
>     71                          printk(KERN_DEBUG DRV_NAME ": %s: enable\=
n",
>     72                                 pci_name(dev));
>     73                  err =3D pci_enable_device(dev);
>     74                  if (err)
>     75                          return err;
>     76                  if (dev_data)
>     77                          dev_data->enable_intx =3D 1;
>     78          } else if (pci_is_enabled(dev) && !is_enable_cmd(value)) =
{
>     79                  if (unlikely(verbose_request))
>     80                          printk(KERN_DEBUG DRV_NAME ": %s: disable=
\n",
>     81                                 pci_name(dev));
>     82                  pci_disable_device(dev);
>     83                  if (dev_data)
>     84                          dev_data->enable_intx =3D 0;
>     85          }
>     86
>     87          if (!dev->is_busmaster && is_master_cmd(value)) {
>     88                  if (unlikely(verbose_request))
>     89                          printk(KERN_DEBUG DRV_NAME ": %s: set bus=
 master\n",
>     90                                 pci_name(dev));
>     91                  pci_set_master(dev);
>     92          } else if (dev->is_busmaster && !is_master_cmd(value)) {
>     93                  if (unlikely(verbose_request))
>     94                          printk(KERN_DEBUG DRV_NAME ": %s: clear b=
us master\n",
>     95                                 pci_name(dev));
>     96                  pci_clear_master(dev);
>     97          }
>     98
>     99          if (!(cmd->val & PCI_COMMAND_INVALIDATE) &&
>    100              (value & PCI_COMMAND_INVALIDATE)) {
>    101                  if (unlikely(verbose_request))
>    102                          printk(KERN_DEBUG
>    103                                 DRV_NAME ": %s: enable memory-writ=
e-invalidate\n",
>    104                                 pci_name(dev));
>    105                  err =3D pci_set_mwi(dev);
>    106                  if (err) {
>    107                          pr_warn("%s: cannot enable memory-write-i=
nvalidate (%d)\n",
>    108                                  pci_name(dev), err);
>    109                          value &=3D ~PCI_COMMAND_INVALIDATE;
>    110                  }
>    111          } else if ((cmd->val & PCI_COMMAND_INVALIDATE) &&
>    112                     !(value & PCI_COMMAND_INVALIDATE)) {
>    113                  if (unlikely(verbose_request))
>    114                          printk(KERN_DEBUG
>    115                                 DRV_NAME ": %s: disable memory-wri=
te-invalidate\n",
>    116                                 pci_name(dev));
>    117                  pci_clear_mwi(dev);
>    118          }
>    119
>    120          if (dev_data && dev_data->allow_interrupt_control) {
>  > 121                  if ((cmd->val ^ val) & PCI_COMMAND_INTX_DISABLE) =
{
>    122                          if (value & PCI_COMMAND_INTX_DISABLE) {
>    123                                  pci_intx(dev, 0);
>    124                          } else {
>    125                                  /* Do not allow enabling INTx tog=
ether with MSI or MSI-X. */
>    126                                  switch (xen_pcibk_get_interrupt_t=
ype(dev)) {
>    127                                  case INTERRUPT_TYPE_NONE:
>    128                                  case INTERRUPT_TYPE_INTX:
>    129                                          pci_intx(dev, 1);
>    130                                          break;
>    131                                  default:
>    132                                          return PCIBIOS_SET_FAILED=
;
>    133                                  }
>    134                          }
>    135                  }
>    136          }
>    137
>    138          cmd->val =3D value;
>    139
>    140          if (!xen_pcibk_permissive && (!dev_data || !dev_data->per=
missive))
>    141                  return 0;
>    142
>    143          /* Only allow the guest to control certain bits. */
>    144          err =3D pci_read_config_word(dev, offset, &val);
>    145          if (err || val =3D=3D value)
>    146                  return err;
>    147
>    148          value &=3D PCI_COMMAND_GUEST;
>    149          value |=3D val & ~PCI_COMMAND_GUEST;
>    150
>    151          return pci_write_config_word(dev, offset, value);
>    152  }
>    153
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology C=
enter
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corpor=
ation
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/202001112351.gy4c3aUU%25lkp%40intel.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnRhSXviJ3VGUJbB7XEjSXuTTKJOT8O1crOE6F0F%3DoJmA%40m=
ail.gmail.com.
