Return-Path: <clang-built-linux+bncBCA6RCEUQQFBBIUY2OCQMGQETMFBKAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9C63959D9
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 13:44:34 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id k25-20020a5d52590000b0290114dee5b660sf2174145wrc.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 04:44:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622461474; cv=pass;
        d=google.com; s=arc-20160816;
        b=pymdKFcBW3DAvHiCpkqdB0plzXpDm3L5pTkssEbM+ZOOBk34upNc4h8Jz6ZXxjBx8A
         fyUXA+vWNL1N0U3jkUrAzIuwq7hU/uP+HiwMcixrcc0zYQeq27UaHP/307siiB77g9vM
         ABt//BFFVahFfmZWx034q4JQKV5B7y1JMRwyxt/Kr8xaRiJYduh6dnkr7xSJB39Bq0fP
         19yvHK0sKZMMIKt5/7guGxNcelWGHMNzqSYMOWszaaNJMpHuCFA5ehdXmrjeDzZ6NZLE
         yBzOn9e8Mx/iar2G8V92Rvvq4XlTaXei2oKHQOs6Z8fRylu8zQtQofPHc4QlXkFDZCKG
         xd5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=v+0kKQ5xSc6rJ+ri85+aeVytV1bDzRVnqfYT64/RbZk=;
        b=0n8CtUGjrRVDE/c9eOKX6YH/GpNcd30uxxCZhcK6xDv7anY7LEl8Ucq2idA9LyHn1F
         pHiIWYobpYKrUHwPFU6+9pKtoVE74KUkSfn8S4bO1N8uDaTzSvfM2GC+NXMM+0cTz78X
         TKbvxs61BiOfvyxQaP8BnSnwLBNENTl2JdSQIAkgG8Rv3/2lre6wUC8QODGkA2OxV9ey
         1yp40FClhTvcHqaNPvkZ510Zn+hMrTINi9Zqh+YVbMYggpbAcVuxs6vgN3903InSE385
         Ir8YLjWYoinmPK1iWqCUOQQpKvCinQQiBzmyz8iZg0e0DpF5H/vwsAycHnJEZY4HrFDn
         Rz/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ionos.com header.s=google header.b=CaGMSsuQ;
       spf=pass (google.com: domain of jinpu.wang@ionos.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=jinpu.wang@ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v+0kKQ5xSc6rJ+ri85+aeVytV1bDzRVnqfYT64/RbZk=;
        b=HWMZ9nF0vDRxhHZnhOaEoVUxMn+5fDNt+j37O4yQgsRnRzQWMd2ecH6P4IFV8P4avV
         Rb0b4F6cwr9t79UybcHnThcuk/Vu5Gg141v1OwmcRXbTC879HX16yaxqSXtiX57YnCNJ
         fULHUWWzZn4UMheheM/5OsQxIxb5kgIZKLgVqN9eOWVmPRv/PPcOJHllpC2h32MrvZFn
         U2QeUMQNPFxMBTa1XkYjalpFRnGFSXGqhjHx+KA/HW1C6HMVWFxIWZgavgCODzxWZzTe
         ZZJqSe8aVtEaszyhNeXn6g1/kgDjhRdU0VFtgVQKkmmf7SWm10ySD0eJGjQPooPf+lnJ
         /aBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v+0kKQ5xSc6rJ+ri85+aeVytV1bDzRVnqfYT64/RbZk=;
        b=oiQHOIIHJEMma3j6PGIS758gsQYPLzlGK1y1YPntz83Rtv/IKWunHQKeh5bcreOznw
         OfcCrx3A8LEkDE4fDs3Ldn74sio1gqWCv6oD/uf+7CtIQprtfchwVoxlG9IhQHfTHS2Q
         Rzk9NP+FLEan7ADFi33B8XOoDSetTvGgBrynR6tbIe+7P3NUQecWa5RERj+RfFsoIsWf
         GMdDCEFlqSnOfWjaqh+sVVGysWKw4EZKQX3EfvzMyQSz0PpWgwVQN03L8Wm7nvraUHdN
         NP8jngzL/ohukhHJRh0A6/Kb1bzWA/Ox/fxelitv2RdINYWNoEHwidU3TYt4VhZg4kIc
         6A1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ltNX6GIaqPFOLt4PLuiHhjuhkyNtQwYhr7Pou3HBIGXcqEYWv
	Qbs60+9jWWbtP/to7x24sYE=
X-Google-Smtp-Source: ABdhPJx217ga3pl2Xz8yCUXRR39kqVe1jLDY/uF7H710rDO0wu6jazqNUb4toi2Lq3hz+2E8adjzKg==
X-Received: by 2002:a05:600c:2054:: with SMTP id p20mr26422119wmg.165.1622461474497;
        Mon, 31 May 2021 04:44:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f52:: with SMTP id m18ls5507876wmq.0.canary-gmail;
 Mon, 31 May 2021 04:44:33 -0700 (PDT)
X-Received: by 2002:a1c:b783:: with SMTP id h125mr12950848wmf.182.1622461473660;
        Mon, 31 May 2021 04:44:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622461473; cv=none;
        d=google.com; s=arc-20160816;
        b=VFqhLu/1u6gpWGAERLdsdabAvNOLcho17HYjHOzE7CNK1LqzyvZUh8KyxTMkQsrg8v
         845Emahvn9zwOxZhsnzhHzygDuRkFlYdmhc4b12bpGnuWukO/ja94dNR1REmroPbTBFc
         yiDUVlPuq0aO6GCjEWPd0TLfGWU6qPZeea5a4cL68BNkMi3gWT8d4R9xrS2oc77/WSxO
         bjwaPV3Nh+uLZiMhuk62fCB/2gaq0ptL2MBPHnjvnCxX8d8xqrrP+ZKbuX8SVnKOUeh6
         DhJ8NDNW7zSN/eksXXVq0ONwRD8yWga84jV4mseVpAeF6/DVMrkPaYjRF263GyXXyKiQ
         gx9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EydTfNejvnx1MWte5xgg5ijqPKeq9Yb+Ijh5yt3VAL8=;
        b=pteWmXbVr1ZmrQVjbRG/DyNqMl+u3KpixDd/B9WDthFBzJCoALLqPAnSFgsWCsdqkn
         OubUyOTwgyuOMyn4CYALgenOJrgB6fwH3GXhRMGAvzL7BSBjEyhN0dwpdRYJ1FJh5s0/
         CzZ5DKmISI58ibptSAlg2hXpwfq9pjZMGNxY9qUO4Iyjjh1rLvYmL0hyYnmZZ8M0kswh
         4OidDDmMou9lwEHk9le0rx0NlPQlXPp0miYSfW++jszZSOjCJ6Zlq0k7tsj1c0w5MmnQ
         idcGHJCgVG5qdZfhr5hmrcAPMVVq3R8otcxG8YuMH7pK5CVvXxEOjI0Td5lzKyqV3rjX
         f61Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ionos.com header.s=google header.b=CaGMSsuQ;
       spf=pass (google.com: domain of jinpu.wang@ionos.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=jinpu.wang@ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id p65si645294wmp.0.2021.05.31.04.44.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 May 2021 04:44:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jinpu.wang@ionos.com designates 2a00:1450:4864:20::636 as permitted sender) client-ip=2a00:1450:4864:20::636;
Received: by mail-ej1-x636.google.com with SMTP id gb17so16218127ejc.8
        for <clang-built-linux@googlegroups.com>; Mon, 31 May 2021 04:44:33 -0700 (PDT)
X-Received: by 2002:a17:907:7b9e:: with SMTP id ne30mr7915454ejc.389.1622461473395;
 Mon, 31 May 2021 04:44:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210528113018.52290-6-jinpu.wang@ionos.com> <202105290002.LSBHvezM-lkp@intel.com>
In-Reply-To: <202105290002.LSBHvezM-lkp@intel.com>
From: Jinpu Wang <jinpu.wang@ionos.com>
Date: Mon, 31 May 2021 13:44:22 +0200
Message-ID: <CAMGffEnoYGoNwXe75KcP8WCTXAYBKkhJ=cx3aC=4mm77stWzUA@mail.gmail.com>
Subject: Re: [PATCHv3 for-next 05/20] RDMA/rtrs: Change MAX_SESS_QUEUE_DEPTH
To: kernel test robot <lkp@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>
Cc: RDMA mailing list <linux-rdma@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, Bart Van Assche <bvanassche@acm.org>, 
	Doug Ledford <dledford@redhat.com>, Haris Iqbal <haris.iqbal@ionos.com>, 
	Gioh Kim <gi-oh.kim@cloud.ionos.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jinpu.wang@ionos.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ionos.com header.s=google header.b=CaGMSsuQ;       spf=pass
 (google.com: domain of jinpu.wang@ionos.com designates 2a00:1450:4864:20::636
 as permitted sender) smtp.mailfrom=jinpu.wang@ionos.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ionos.com
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

On Fri, May 28, 2021 at 6:20 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Jack,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on rdma/for-next]
> [also build test WARNING on v5.13-rc3 next-20210528]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Jack-Wang/RTRS-update-for-5-14/20210528-193313
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/rdma/rdma.git for-next
> config: x86_64-randconfig-a012-20210526 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6505c630407c5feec818f0bb1c284f9eeebf2071)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/66f95f659060028d1f0f91473ad1c16a6595fcac
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Jack-Wang/RTRS-update-for-5-14/20210528-193313
>         git checkout 66f95f659060028d1f0f91473ad1c16a6595fcac
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/infiniband/ulp/rtrs/rtrs-clt.c:1786:19: warning: result of comparison of constant 'MAX_SESS_QUEUE_DEPTH' (65536) with expression of type 'u16' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare]
>                    if (queue_depth > MAX_SESS_QUEUE_DEPTH) {
>                        ~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~
 Thanks for the reporting.

As the check is checking against u16 max,I think we should reduce
MAX_SESS_QUEUE_DEPTH to 65535, and drop the check in line rtrs-clt:
1786

Jason, you mentioned v3 is applied in for-next, I guess I'll wait when
you push it out, and send the patch to fix this. is it ok?

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMGffEnoYGoNwXe75KcP8WCTXAYBKkhJ%3Dcx3aC%3D4mm77stWzUA%40mail.gmail.com.
