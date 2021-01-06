Return-Path: <clang-built-linux+bncBDNONOHMUUCRB4572X7QKGQEZWAZCAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EF82EBA46
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 08:00:04 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id i21sf3174103lfe.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 23:00:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609916404; cv=pass;
        d=google.com; s=arc-20160816;
        b=YmN69t/qxVxp+IMT070oc3dHywQ9epJk2mPO4ORK8ejUcb1kZfv559ZjFe77hzy+6O
         0o9e0SmL4NjZLu+SjE/3iKDsumvkU/tZZwq0ijBjWcbxBKgo4b13BI66mvO1VObje4gt
         BYyl2ELNBqsQZU566QNqW8mNTLDlGLjg62TkZxmCpTqjc+Hu/E1/VWIVUN8quV0kJPTq
         IOCtgltONU/gwFCpyI/MjrJ3sYbst+3V8Mt6QKFNHY+XZZdYeoE8XlzOfotucC/wpyIW
         ZrfCXQq9dKgoQ0ShrB2Xgyu8Hv1tCazLpXAHwzic84opEqS1BhrJXE5zE0ZACUajC2Jj
         iHfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=BeCtVCupEneuNU0k2a3yivZ3piI3/UYDOj7hJyZZn8E=;
        b=QmttvXdWdGlDh3JETczlgeFhI5Id1soezqd9Lv1UNMw+lrct3JQvDYiIP/4ZWCBWJh
         SUP97l58bXca69U/lWcM25hsBALNXg9hQArqs6hVYnOOs7soFAXuPdQedvP9iPYx4IgR
         ssOWE5aEfCvxjCXYe13J9ZSFzd76fkJuN1llsvxtGPi26pBaFl3CxOfemfMNdT6OLnlO
         MKLenY1U5A9TsUJxoN//T19f8inrpE8PNbfBQsfrsdjh4VgNbg+RJllJXHXI80xEwuLR
         hlWL+rlInV0AcVrke5tw3cz/q3M9xLYS/ZTpxMYWxXYhnn8d7erGkc0wsd0wqOAsAzhb
         jtfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=Ep667Y43;
       spf=pass (google.com: domain of bgolaszewski@baylibre.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=bgolaszewski@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BeCtVCupEneuNU0k2a3yivZ3piI3/UYDOj7hJyZZn8E=;
        b=h9onZi20w1PpZe2w1iaofrrhMBSqKGT5LEU/B+AY0H3DEoxU1IFTIs8cLidXVLBdcK
         aw2+Otm2+cXyEZWOwwW4Y3JMQuzib1+VOhrZsgSOefFHXVFlome/Bmb0qjwmejgMUqlb
         HFdqFbzPYQr4gjxzbLDzM3VNKOpRgwgZBlK6zFj2oueOcofpVUIxLV48ARAAB0N6Uwz0
         VeywjmZHKDLGDPbFGN5tTxxJa6HekbYafBqZ6lqM1Q9UoN0uvv/JecoW5ipj5tAdgAkE
         8Ml2uVMnDzmTa+eb79W1X7b5TM0nX78zTfqmd3HCPHZkcAbbklic2kzOkA5IZtCflCrg
         c/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BeCtVCupEneuNU0k2a3yivZ3piI3/UYDOj7hJyZZn8E=;
        b=S32+tOSM432podWRinJGRy6YHf1Vb+iXW15oIOegA1dzZTdfBQeLu/nSlL6DDTSMy8
         Ewv8/n97qI0QW+6xvvmCLXekjKwZT1Bz42iC9TFOypY2tyPuyUswm/UCN5R8c9jcX3+G
         iv4HmvJjv11dgKQdpuebJdpiQSqos49R5dFKa0vgNxy+h8rePal2yPvHxhQK+g1YBdxU
         bOeQ5otKNeHuPUqbr2GzxEEjnKhz7IevMHBmMxcKUnGAbqQt3jVXaao2ZxMKQ9zOp4r8
         mYmtLlQ0PeWkqNiEzEzjdCylo71iCi3qS9uR0I/apyp4sbE7Vl93e7JJZEOwkgcij0O5
         9B5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Ig1jZK5Ta/xe2SXPkbFlsgOlCiS58nVUxCeODvcYR8yr3zHOM
	JuFdFMjzCYgh4On37/h899E=
X-Google-Smtp-Source: ABdhPJyBVDWYPNotweXdMVMqjqARZ1GlqoPVE+YGiiXDxKdLn4DXtFbS6zc/OYLdE5vn+AeigpE2oA==
X-Received: by 2002:a2e:b047:: with SMTP id d7mr1376204ljl.467.1609916404064;
        Tue, 05 Jan 2021 23:00:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:980e:: with SMTP id a14ls376723ljj.7.gmail; Tue, 05 Jan
 2021 23:00:03 -0800 (PST)
X-Received: by 2002:a2e:6c0a:: with SMTP id h10mr1564376ljc.149.1609916402952;
        Tue, 05 Jan 2021 23:00:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609916402; cv=none;
        d=google.com; s=arc-20160816;
        b=nteu1fUc2e3AhyvrmJKIGqfwVvla79MROi6FPPP8VO/4vKS282VGup9k1EJ+l9XFg7
         bPjBZ6z5fVOdMcgMIq8DhjlukjOa4VAh7qg+e8r+H0Qm/nLSpU03LyHs3izWqsTvKz4x
         UrDuHsfDz/5Ojf+KY9EvH5zUPad2R2VC/SbvVBMaARVYjOBJ3q/v4ePasOtIvXHwnynq
         XwQ9Bt+Wxua3Dwot5GdjJHJp3COyII1DkrSASJaVrJmnxcnmN3yJucnK9GpsldiPUens
         Ox97jRGFxhx4umuvyCTz2rGj3Q5+ZcA1OPObM1HBOetbzDcXuocQ6bfrCedkiS8R4R9T
         MzDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kv8nRLjsuAcXnyWTXClR33zRdQK5e2NXZzdyNIims3Q=;
        b=Cd3cC8u/SPEfzyn9aapk9ubnYtxLAY3/XTxzhgTHXnJ/eU58QYwwhNgsc2H6njxCOa
         K4ZzDYcZI7h8ZxdfA7IUjj7La2S/kQjRfMh5bKh1A4C00/s9sPVgyAUvMi0PZogv9Xbz
         c5+THptclu3vLCoTQkEL7+stdamdp070vsgesmxnbNZBsIimDKu6uWsUrI/ag7AdKnmn
         I3FmXiwTu4JqFLuf0yecSREKxMW5tgpbhzzdEJkQoGnUyhu57xlMdDWgMu9DJCMSUTA6
         hit0hfhNmh6uFX+RJk01i9RoY5l5E+iE1TlhR+X5oJHTretKPUIFfsir9n9p0hLWr2k8
         aHHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=Ep667Y43;
       spf=pass (google.com: domain of bgolaszewski@baylibre.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=bgolaszewski@baylibre.com
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id h21si56625ljj.6.2021.01.05.23.00.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 23:00:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bgolaszewski@baylibre.com designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Received: by mail-ed1-x536.google.com with SMTP id j16so3509435edr.0
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 23:00:02 -0800 (PST)
X-Received: by 2002:a05:6402:17:: with SMTP id d23mr3003595edu.341.1609916402398;
 Tue, 05 Jan 2021 23:00:02 -0800 (PST)
MIME-Version: 1.0
References: <20210105134424.30632-1-brgl@bgdev.pl> <202101061453.E7YDzBDz-lkp@intel.com>
 <CAMpxmJUxKD9-J+MESZMxMePZX4WO_QFj6FudrAKS=Tp_kW8iOQ@mail.gmail.com>
In-Reply-To: <CAMpxmJUxKD9-J+MESZMxMePZX4WO_QFj6FudrAKS=Tp_kW8iOQ@mail.gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 6 Jan 2021 07:59:51 +0100
Message-ID: <CAMpxmJXca8Wc0Fwod+mESC6cee5SEamyN6ayj1AqFQJBHVqQ3A@mail.gmail.com>
Subject: Re: [PATCH] rtc: s5m: use devm_i2c_new_dummy_device()
To: kernel test robot <lkp@intel.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, Alessandro Zummo <a.zummo@towertech.it>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, LKML <linux-kernel@vger.kernel.org>, 
	linux-samsung-soc@vger.kernel.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: bgolaszewski@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b=Ep667Y43;       spf=pass (google.com: domain of bgolaszewski@baylibre.com
 designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=bgolaszewski@baylibre.com
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

On Wed, Jan 6, 2021 at 7:52 AM Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:
>
> On Wed, Jan 6, 2021 at 7:47 AM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Bartosz,
> >
> > I love your patch! Perhaps something to improve:
> >
> > [auto build test WARNING on abelloni/rtc-next]
> > [also build test WARNING on v5.11-rc2 next-20210104]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> >
> > url:    https://github.com/0day-ci/linux/commits/Bartosz-Golaszewski/rtc-s5m-use-devm_i2c_new_dummy_device/20210105-214736
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/abelloni/linux.git rtc-next
> > config: x86_64-randconfig-a004-20210105 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5c951623bc8965fa1e89660f2f5f4a2944e4981a)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://github.com/0day-ci/linux/commit/21651184178d1001f3bbc858c9161f1b7fd65321
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Bartosz-Golaszewski/rtc-s5m-use-devm_i2c_new_dummy_device/20210105-214736
> >         git checkout 21651184178d1001f3bbc858c9161f1b7fd65321
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/rtc/rtc-s5m.c:773:4: warning: variable 'ret' is uninitialized when used here [-Wuninitialized]
> >                            ret);
> >                            ^~~
> >    include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
> >            _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
> >                                          ^~~~~~~~~~~
> >    drivers/rtc/rtc-s5m.c:719:9: note: initialize the variable 'ret' to silence this warning
> >            int ret, alarm_irq;
> >                   ^
> >                    = 0
> >    1 warning generated.
> >
> >
> > vim +/ret +773 drivers/rtc/rtc-s5m.c
> >
>
> This isn't caused by this patch, it seems to be an older bug. I can
> try to fix it while at it.
>
> Bart

-ETOOEARLY actually it's my bad, I'll fix that in v3.

Bartosz

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMpxmJXca8Wc0Fwod%2BmESC6cee5SEamyN6ayj1AqFQJBHVqQ3A%40mail.gmail.com.
