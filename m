Return-Path: <clang-built-linux+bncBDXKNLX6ZIFRBMOZ5LVQKGQERYRA3MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B3AB157D
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 22:38:10 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id l63sf21667803ywg.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 13:38:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568320689; cv=pass;
        d=google.com; s=arc-20160816;
        b=jPjjZNLF3plDZrRtO8w2rPenBsDjTWHLjFbg6VSJpTMMqcEy8Ler8JvPh5nItbWPTp
         JKyGmQS48OvWpx25Zgpt81NIjHpSh2hVEEHlO2HxOq944p/1j5TfN0JkTVjaaBf/JZtN
         kaLRvUpsPFJzUJ1V/15lMANc21gjRJnNQc1jgCfP1RVouSoc5i0nAFD0tPntBxxKF+M+
         MRkc6DA5epp7Si39nvB4XwP7kG6f3M88LADW+xDlhuTzpYzYHcXPjOp0PkqtNxIRtjGg
         5KE79+Ca3zs/izCjl5sBC8DWlGQJgCNht/5GZsrLEjOHCPeJ9Cmw2UDV1VyM+Dt2JTp4
         mZNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=BEyZfMZ9uOTHJIBZiJ1o0QLrPXVy0CmEvXvZo+XpK6Y=;
        b=CzcTPGMChetwiOA5Oj0E6o/ahnipB3HCD3JYEkXwZP11ThXwTeur/fDZpUQc0/GBR8
         YgVR54+y8RwjfYqTsGUa57bR1pGgS9mHsnYV6d1UmXRI2J0O4YvtrS7TydCKNPTV///y
         OS2MLVQidpnoR5ph9cLjdMbT5xnFVGhUBn0E5HiyBinObmD/wwQMMPMwCDP8gqejz9f/
         5Upcpma5bmkKds6GODYwhcEGY2ccl+Vb+sJ/q1vUUgdnsR0xosxzVyO/razt5yLcOxSg
         c0ScijdV9pe/DfleNXK2i28miBkZjie3ANy8fp1qi4zxk+ppIus/2erS/+YhrimBVNAe
         BLew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cbwcz+Br;
       spf=pass (google.com: domain of davidriley@google.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=davidriley@google.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BEyZfMZ9uOTHJIBZiJ1o0QLrPXVy0CmEvXvZo+XpK6Y=;
        b=Pkt0CXjkfHVo2uQGZWn/NZOD04dVHd4fGEH//zUvkCnQQ56/OZocKJtzW9AQMbS20V
         TrEYF8sseGVZBGo1aIYFyjXJFGp1RrrQsE/NXG3NS9BxdzQY19a8jWz1nS8Wb/Y+/AyJ
         aozkLdG5bKs1ZNESOmkCmdi+NuIjBI4FMpjLxx17MN7nmijqYHy3WqqJlPOMnaGfgrtd
         4Ioi+pKzNdLryrrhW50BcXLz7675pwiW9hRur0eUzi3IaIqoaD4zsXFpIbqI9T7JYFrq
         2ngOnbSrDRDb1aM6+4f7oDktXk7iAwAuCOd1CILpvQmYoWGYUp+cnr03vHt1Okb4qjXN
         o5TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BEyZfMZ9uOTHJIBZiJ1o0QLrPXVy0CmEvXvZo+XpK6Y=;
        b=ejk/j2UzjfCQsQ+DDHJ5G3Zo5uIG8/ti0Fcxh3yC9El+NO4oZ6tce67+F6oXEeNWMh
         DmL05sUtEmxX5fsHnfpuAU1oGD2/7cq67CGy8bSOIi5BSB8oWyDSWBqVgtmUF+Qc9c0g
         3KoRBanUEfbYhIC/iZGShHtWktLAz+WbP+SjiY8mJpqJQRnCAyD7Yt8Z4Tl3STlKGAt6
         kYphxtzEdaytG/OcgTmaparR3daHSCJkYnVO7BToMXX5B1BmWYp7QRLtTS7V39Uc+vUh
         TpsR6d2NaprMnn77IUeO7tgTPFp3keSIdwCIOg1t6zjbf2ckdbsXa9p9MdRXHmUvDGaV
         kdOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWa5RKkgBrL4gNRosFgKvyzy8DIPknPP9f0s/i9WOhUbIltl+fV
	240hfb4hplpaYZdCimz9JUE=
X-Google-Smtp-Source: APXvYqynC3wvgGe5EnQDyJ7z97iI3bp4k9dllcIX/py2SQPCBHAzmjreBMld+oBv84vQoy7e17X3lQ==
X-Received: by 2002:a81:7d85:: with SMTP id y127mr30237809ywc.79.1568320689585;
        Thu, 12 Sep 2019 13:38:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8c8:: with SMTP id 191ls48872ybi.11.gmail; Thu, 12 Sep
 2019 13:38:09 -0700 (PDT)
X-Received: by 2002:a25:d045:: with SMTP id h66mr3542390ybg.67.1568320689304;
        Thu, 12 Sep 2019 13:38:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568320689; cv=none;
        d=google.com; s=arc-20160816;
        b=i1m2xMoOmtfIEKCCTb8KuxeyoXVrDkVGq+G+dT2t83R+aiF23wItN5aAEJ3bTsLN6D
         3B5khQsnwbQ5S4faLvmRzq92Ep7k5TrivHaVOQpCiYEn9oU4l02Lh6pQAVwQUUdKkuuw
         TBLHG46h2wPA4UU1i5qk1+nSHrmmLuzg/SyxJOJ+gtqREg0c/hCUXrhte/Csa6t7+870
         ujOEtFb0Z7zIhkHug28NGy/BqhvuTJC0H8wJsgHsg4yTmcKmsNziLHclOmEinyhy3End
         qs/W19FiXyepjM3bBmFT9Jn5So5x4KUwmypx3qTsfBXZ6tfufOeNaS5q9nwzownvUV5C
         7Yfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jSDtqEXB2q5zR5DdHo+nE2X0AkI5wM/VcTpvGdaZ5X8=;
        b=YIbcU96S+hSUd28UTbuxeS/x077ASEVSMVDdbm/ylu3GnXPt0vKyB1LJB3GME+Q03k
         U5HXmxQ5BeqkiA4THvRJpGzQtJy46zsx6Cc0Ro4uHjj259QNz6LPNS+DBzBcyP/SpRko
         MzTPsbJQAoh0Wk+3L+9J6T2TK3bdU2atrx66uJWRjBq6zTjRZhkydGah82W79zzPr9gT
         jRjT01PPPg2L9UDZzqIAsomZwvkI5oVZ1t8Bh+F7BDxeh54rDnDk2CsTK1Q0gT5cVxS2
         BtCuVbhcAATcO/WxTZ36vIscG2PvqhRZaF8h0x1nxVC/ZnCQjD1QnxB+HF0TEOED7zf3
         qV9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cbwcz+Br;
       spf=pass (google.com: domain of davidriley@google.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=davidriley@google.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id e69si7290ybb.3.2019.09.12.13.38.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2019 13:38:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of davidriley@google.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 67so27371298oto.3
        for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 13:38:09 -0700 (PDT)
X-Received: by 2002:a9d:6c12:: with SMTP id f18mr2470777otq.297.1568320688463;
 Thu, 12 Sep 2019 13:38:08 -0700 (PDT)
MIME-Version: 1.0
References: <201909121842.sj2MOxOb%lkp@intel.com> <CAKwvOdkqBiDCYKwUpJ7y8D0-KJQwvX142Y_ymdoWhDpF9mYt3Q@mail.gmail.com>
In-Reply-To: <CAKwvOdkqBiDCYKwUpJ7y8D0-KJQwvX142Y_ymdoWhDpF9mYt3Q@mail.gmail.com>
From: David Riley <davidriley@chromium.org>
Date: Thu, 12 Sep 2019 13:37:56 -0700
Message-ID: <CAASgrz2B77TbnYnv3zxtoSMOas5X1qtE_LyCXsORvWEPLdox3w@mail.gmail.com>
Subject: Re: [drm-drm-misc:drm-misc-next 17/17] drivers/gpu/drm/virtio/virtgpu_vq.c:361:5:
 error: void function 'virtio_gpu_queue_fenced_ctrl_buffer' should not return
 a value
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@01.org, 
	Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: davidriley@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cbwcz+Br;       spf=pass
 (google.com: domain of davidriley@google.com designates 2607:f8b0:4864:20::344
 as permitted sender) smtp.mailfrom=davidriley@google.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Thanks for the heads up.

Fix has already been posted: https://lore.kernel.org/patchwork/patch/1126955/

On Thu, Sep 12, 2019 at 11:23 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> + David in case this wasn't already reported.
>
> On Thu, Sep 12, 2019 at 3:17 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > TO: David Riley <davidriley@chromium.org>
> > CC: Gerd Hoffmann <kraxel@redhat.com>
> >
> > tree:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
> > head:   e1218b8c0cc1f8108be67ba3783d63eb4a50d792
> > commit: e1218b8c0cc1f8108be67ba3783d63eb4a50d792 [17/17] drm/virtio: Use vmalloc for command buffer allocations.
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         git checkout e1218b8c0cc1f8108be67ba3783d63eb4a50d792
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> drivers/gpu/drm/virtio/virtgpu_vq.c:361:5: error: void function 'virtio_gpu_queue_fenced_ctrl_buffer' should not return a value [-Wreturn-type]
> >                                    return -ENOMEM;
> >                                    ^      ~~~~~~~
> >    1 error generated.
> >
> > vim +/virtio_gpu_queue_fenced_ctrl_buffer +361 drivers/gpu/drm/virtio/virtgpu_vq.c
> >
> >    344
> >    345  static void virtio_gpu_queue_fenced_ctrl_buffer(struct virtio_gpu_device *vgdev,
> >    346                                                  struct virtio_gpu_vbuffer *vbuf,
> >    347                                                  struct virtio_gpu_ctrl_hdr *hdr,
> >    348                                                  struct virtio_gpu_fence *fence)
> >    349  {
> >    350          struct virtqueue *vq = vgdev->ctrlq.vq;
> >    351          struct scatterlist *vout = NULL, sg;
> >    352          struct sg_table *sgt = NULL;
> >    353          bool notify;
> >    354          int outcnt = 0;
> >    355
> >    356          if (vbuf->data_size) {
> >    357                  if (is_vmalloc_addr(vbuf->data_buf)) {
> >    358                          sgt = vmalloc_to_sgt(vbuf->data_buf, vbuf->data_size,
> >    359                                               &outcnt);
> >    360                          if (!sgt)
> >  > 361                                  return -ENOMEM;
> >    362                          vout = sgt->sgl;
> >    363                  } else {
> >    364                          sg_init_one(&sg, vbuf->data_buf, vbuf->data_size);
> >    365                          vout = &sg;
> >    366                          outcnt = 1;
> >    367                  }
> >    368          }
> >    369
> >    370  again:
> >    371          spin_lock(&vgdev->ctrlq.qlock);
> >    372
> >    373          /*
> >    374           * Make sure we have enouth space in the virtqueue.  If not
> >    375           * wait here until we have.
> >    376           *
> >    377           * Without that virtio_gpu_queue_ctrl_buffer_nolock might have
> >    378           * to wait for free space, which can result in fence ids being
> >    379           * submitted out-of-order.
> >    380           */
> >    381          if (vq->num_free < 2 + outcnt) {
> >    382                  spin_unlock(&vgdev->ctrlq.qlock);
> >    383                  wait_event(vgdev->ctrlq.ack_queue, vq->num_free >= 3);
> >    384                  goto again;
> >    385          }
> >    386
> >    387          if (hdr && fence) {
> >    388                  virtio_gpu_fence_emit(vgdev, hdr, fence);
> >    389                  if (vbuf->objs) {
> >    390                          virtio_gpu_array_add_fence(vbuf->objs, &fence->f);
> >    391                          virtio_gpu_array_unlock_resv(vbuf->objs);
> >    392                  }
> >    393          }
> >    394          notify = virtio_gpu_queue_ctrl_buffer_locked(vgdev, vbuf, vout);
> >    395          spin_unlock(&vgdev->ctrlq.qlock);
> >    396          if (notify)
> >    397                  virtqueue_notify(vgdev->ctrlq.vq);
> >    398
> >    399          if (sgt) {
> >    400                  sg_free_table(sgt);
> >    401                  kfree(sgt);
> >    402          }
> >    403  }
> >    404
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAASgrz2B77TbnYnv3zxtoSMOas5X1qtE_LyCXsORvWEPLdox3w%40mail.gmail.com.
