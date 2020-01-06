Return-Path: <clang-built-linux+bncBDYJPJO25UGBB37JZ3YAKGQEKSMZRQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE96131B69
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jan 2020 23:30:08 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id d1sf8205076qkk.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 14:30:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578349807; cv=pass;
        d=google.com; s=arc-20160816;
        b=r810Q07/wpFIe7L0KqUTtC7uonfb3K5HGRi6dFDUuFOm9QDs5qctJs+3WqhLz905JO
         Z6b3ZZ45xbYtc/MovZjUDg3yq6LEMJg243Y3rUpIxhMGjO88ooLUdQszBz+rojGNP+68
         iJlbjsR/zlSyUWUptHKvoLoza1l9/1sEHFdjWMpom01xST4hSmWucLsHKWzTeZUIwp5Y
         CPORnCV6A4gaLgHBaJ8XQQjHyTZsG0N2rN4cBPznpp3J/kx+YvTADRWxKWC3JEMvQi7m
         mRbmdM5VRNKfdBuAoy9/cTYZuEKgEKJTMkfNOyQd/i/2Uy2Q9baHQwOJOsmWFYzskpsv
         xlHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ERmCe558u8Gel9W3dfD5twzCrQLASaQAH7m908jvWbo=;
        b=ROdwJmcSbAg7Ziwp6/w13qKVfsPV0tPefCOLyRSJtOoHkPZ9YRew0LsCYley0+lnk1
         tZkjw07uUtBOSevJK424TmLOUFDCxCvk+FQuZcAsq6EoN2GY0DVRHAjGr7NrwzIr2yOJ
         B98SHX+jiJ7sD1ZOSg8dYTC/1TSSwNsksO4OagoQKHhAdyGq3bNPxwZ3qJ6S582DyVSc
         oqiA1jluLI9gAgnqlYAajD66jF5wdlaMbWm73LsFRdpqZPGWbKRrvU5WIFb5EQTGNOSy
         Andf2guTE98sqZN4Sn5G6zV3tiQZeq5o+Xutt4bMAaJBngoPnIKbOt0BYweoF5SAQmdE
         5AFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mHLOgnhU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ERmCe558u8Gel9W3dfD5twzCrQLASaQAH7m908jvWbo=;
        b=mqY0jXVxBcX6C8n6IkNu5OzbO+vxMvewNaStLWrUG0KuLtS2LwvfNIJxyeXrrZOkbG
         WhU6FI0qJr+TBnaCjjO2cjtrtcV2TowYVtzCNOsYsuaA/ZUyLQQH+w2EkZqk/z6oh2fy
         PxFQ6KpZJ8neLMqhuwX6dW9D9c7HQbVQa2Iyj27eXzubgsZS0EJKL+FSoXqgAmOS5M7P
         J3NNQFzjwl6TyduWDmjnvZgHtdG6xnJQtTNE12vxtcbCCMdfvN7OL0zcN3VBLm4HEmsI
         BwLB3a7+ptRD0z+2C+5c96A6Jbl982CfVHIH0q0XUwmIralvlzn1PGRfTOiOtA9tdwOh
         5X9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ERmCe558u8Gel9W3dfD5twzCrQLASaQAH7m908jvWbo=;
        b=ceIGY/QYxXht3I11XOqo1CMY6jYPCF8sW/7I0QlwBQwXdOnW9sx3gq7Bv6YZDrpKgh
         66pSYVYyuWMIDLb6EAx5S5ueEz95Kl76NTPH9DZodYB6yumvjm4RQgeY7xMoUq1w8Ofn
         URF1++jFlQTpm6yHYHaKPQ4Wvxg+bI3GiFfnovcTrhRAUZWVY2DqmYpzipkCW4rf1cZ0
         iNPFBq6c0mjfvidnSQPg0GVbcoROIMko186lKD5d3uiQO5TcrknFRCwYTM79yj2ngDL/
         BaMKBK1mpjemH5Ev0KeHYaaSsC+RVDpyzkTMil17aOOc3JoVlPxrAUpsTcveuQ2rY/ru
         hSxA==
X-Gm-Message-State: APjAAAXs+4B5+nmNnjJusHO5uUiwslE83OgcW+lXSVn3cQM0V/+5b3cy
	NRSNX7wEFlbw3jqlp1KPmiM=
X-Google-Smtp-Source: APXvYqzoo3E1InCiIt1QULP68xxfz1y0d11DyuidlMZIcXIUW7vZDFMSbw3nquqI2PwcU/nYWCB4nA==
X-Received: by 2002:ae9:f70c:: with SMTP id s12mr84140010qkg.487.1578349807508;
        Mon, 06 Jan 2020 14:30:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2712:: with SMTP id g18ls6882088qtg.3.gmail; Mon, 06 Jan
 2020 14:30:07 -0800 (PST)
X-Received: by 2002:ac8:5313:: with SMTP id t19mr78798130qtn.375.1578349807121;
        Mon, 06 Jan 2020 14:30:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578349807; cv=none;
        d=google.com; s=arc-20160816;
        b=M5Kx9r2lfmMmk3p0CtkZD9jpE/BgIgKTnH8zuDXB6e6Pg+mD1OmnMkG0dhoDUpy9g/
         kWzJ9hZiqCRLpv7UiaP3VhLV9GKkVLPxE5HaYIJp5jNCWmZLYGk1HR2of2xTs5HQjMG8
         K4fv1IgUoV4O1rf9bf16bF4/nsh7U2DjRyy3OXEYbYxqS3a98GyjnwsrFT4Tykapl6sG
         H+yjuArlDMm/UWR0/Ejbmh9VHCwvIs5zmJckwLJUnRMinaCpglVqqABbuTaubA3VOX7s
         rIRdesTexLxVYZ0sJglPyFFRJkvHJ3MEiAVBF0uYMyRLT9twy/nL+NOplfvJum/NdvRE
         kveA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9f+RBzW/H0VB//QgCSu1z2IQAotWrzBNPWKJtU8Tq4k=;
        b=pWp9i5RgN4UWDNTMCLYzG6bECxQ2YKcJWWMxgvK6K7dErld3HZ5Bmq5aVsVUZ5JTn6
         88q2rQ7FEUwFir5eGpsE7OeQxMbbr1ssN9Rb4p8Ohj2ReBG/YuLwK7WAI/ZKGf4403fd
         u0/jiMzv6bWOxn+j20vKGL+lndwzwLGaQC7KXwnijHVqyHU2tMw0abpbwVbi7TCb5Rlv
         ZYwNYNRyeZDv3VyEu409H6PVEzekudMjSdtgnwpSU3BdJQfWThGxxXEzOFadh2PO6hEr
         zAL+OCCofame3of+76FsE9vatzTYWjsHDgdz/cF0rBHks2taAWYJionhn1F6vJTrdaDe
         rp/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mHLOgnhU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id 145si2156808qkf.1.2020.01.06.14.30.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 14:30:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 6so27511140pgk.0
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 14:30:07 -0800 (PST)
X-Received: by 2002:a63:d249:: with SMTP id t9mr115853480pgi.263.1578349805868;
 Mon, 06 Jan 2020 14:30:05 -0800 (PST)
MIME-Version: 1.0
References: <202001050333.SnzanhNo%lkp@intel.com>
In-Reply-To: <202001050333.SnzanhNo%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Jan 2020 14:29:54 -0800
Message-ID: <CAKwvOdmkhS+jmu9erpnqr6+bvxjQD7yxQSvs3scokJ42tkF4mg@mail.gmail.com>
Subject: Re: [PATCH RESEND] raid5: add more checks before add sh->lru to plug
 cb list
To: jgq516@gmail.com
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	kbuild test robot <lkp@intel.com>, liu.song.a23@gmail.com, linux-raid@vger.kernel.org, 
	guoqing.jiang@cloud.ionos.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mHLOgnhU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

Apologies if it was already reported (working backwards through emails
missed during the holidays), but this warning looks legit. Can you
please take a look?

On Sat, Jan 4, 2020 at 11:48 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20200103135628.3185-1-guoqing.jiang@cloud.ionos.com>
> References: <20200103135628.3185-1-guoqing.jiang@cloud.ionos.com>
> TO: jgq516@gmail.com
> CC: liu.song.a23@gmail.com, linux-raid@vger.kernel.org, Guoqing Jiang <guoqing.jiang@cloud.ionos.com>, linux-raid@vger.kernel.org, Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
> CC: linux-raid@vger.kernel.org, Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
>
> Hi,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.5-rc4 next-20191220]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/jgq516-gmail-com/raid5-add-more-checks-before-add-sh-lru-to-plug-cb-list/20200104-172752
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 3a562aee727a7bfbb3a37b1aa934118397dad701
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 320b43c39f0eb636c84815ce463893b21befdc8f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers//md/raid5.c:5484:6: warning: logical not is only applied to the left hand side of this comparison [-Wlogical-not-parentheses]
>            if (!atomic_read(&sh->count) == 0 &&
>                ^                        ~~
>    drivers//md/raid5.c:5484:6: note: add parentheses after the '!' to evaluate the comparison first
>            if (!atomic_read(&sh->count) == 0 &&
>                ^
>                 (                           )
>    drivers//md/raid5.c:5484:6: note: add parentheses around left hand side expression to silence this warning
>            if (!atomic_read(&sh->count) == 0 &&
>                ^
>                (                       )
>    1 warning generated.
>
> vim +5484 drivers//md/raid5.c
>
>   5461
>   5462  static void release_stripe_plug(struct mddev *mddev,
>   5463                                  struct stripe_head *sh)
>   5464  {
>   5465          struct blk_plug_cb *blk_cb = blk_check_plugged(
>   5466                  raid5_unplug, mddev,
>   5467                  sizeof(struct raid5_plug_cb));
>   5468          struct raid5_plug_cb *cb;
>   5469
>   5470          if (!blk_cb) {
>   5471                  raid5_release_stripe(sh);
>   5472                  return;
>   5473          }
>   5474
>   5475          cb = container_of(blk_cb, struct raid5_plug_cb, cb);
>   5476
>   5477          if (cb->list.next == NULL) {
>   5478                  int i;
>   5479                  INIT_LIST_HEAD(&cb->list);
>   5480                  for (i = 0; i < NR_STRIPE_HASH_LOCKS; i++)
>   5481                          INIT_LIST_HEAD(cb->temp_inactive_list + i);
>   5482          }
>   5483
> > 5484          if (!atomic_read(&sh->count) == 0 &&
>   5485              !test_bit(STRIPE_ON_RELEASE_LIST, &sh->state) &&
>   5486              !test_and_set_bit(STRIPE_ON_UNPLUG_LIST, &sh->state))
>   5487                  list_add_tail(&sh->lru, &cb->list);
>   5488          else
>   5489                  raid5_release_stripe(sh);
>   5490  }
>   5491
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202001050333.SnzanhNo%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmkhS%2Bjmu9erpnqr6%2BbvxjQD7yxQSvs3scokJ42tkF4mg%40mail.gmail.com.
