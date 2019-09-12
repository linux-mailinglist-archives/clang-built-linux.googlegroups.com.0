Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKM25LVQKGQE5ZB7PEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C95FB145C
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 20:23:39 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id r35sf3568449pgb.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 11:23:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568312618; cv=pass;
        d=google.com; s=arc-20160816;
        b=pRD0STxT1dawJXMdL1w1jyJKVRfPRaNYeEMAFsIwn90abAHDmeRhiztpZZ0mwrwA3Y
         VAN85VZYyxPCIwj/T9xbaqXmOysydya3RJC/XmuzFdCbEGhPxCASHQrsmjCMBlVzG+5V
         n7t1RDFUD5OiuDJPReMn5VESxEK0x628rJaAEjoG076pcdI1BXzSw+roAa3QeAtRG7Sf
         ZhawbIDWOgHCBeAFOW3VR+wAenr1QG0E4KqmSwoBQrU+5zolm31XdQ1dEA0tOxIqcWi7
         M27ysw5jBVafBYsNgUu/eukcBAJWrXwTf9bCq1Yy1baTNew979SQrlGC2kv52lFE9nH6
         wb8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=p08PIZzqfTtLKpMpvcfjkgXi7YZ5hppzI+ceyFXbf0w=;
        b=MNCRE6i7CDZ8UuRIko32Fj0cDKS86YURo0Gwx7YTo8mAFlPhZmQiZB/XNyWiSlodj0
         dfQm5CVKZZSbf7aME6aUwUXK38QQccscqaUdRPTWVjMQOyvoqUaBolC+47AbyqGtR3tX
         xvu3jf1h5Ta16GCjnu2MR7M2ciqGTk+8kOHIdN5gfrN3Icu68jubE7Wio/sudxBxCxqR
         2HQ0fkm8dN5qFPMknAK8C5M3jiBP8/g9iOofQ3rMiciqWK6lduQdjKCJc/tXg7CqBlVH
         Qp/mvjtTeSC8LeBMrY64BV3B4wDNVPEMkugLq9Ik7I6okXAq1/0w6Q9f9GwtT6Uz4N7q
         Wtug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ax2LW9nI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p08PIZzqfTtLKpMpvcfjkgXi7YZ5hppzI+ceyFXbf0w=;
        b=iUI+Nyekg1M/D1Iw73ekvP56WtmZ6/dS+PmNHzozKnV3OvHCC7Yij0JYH0LXYK0G6y
         yrO8Fj+Xb6wwj1lC4IrZYan28fXf2J+kSnya9L+ajGYdCs49g6b7sMf0a8iSRWn61WS2
         TCz6X+W8wDnNYmB+EzGqrFjzeguP40lSBbJmdOr8OTJo1Iz+ZHE13eFPasrPNdWDqIpm
         ET6nBD9Kz5lz8RCITjit7Y4e+knFrGE2YszfJiXb3JuoSE6tYYCO41QTzUv9jJxDdYTE
         clWsmW4/Llu61NjI71t1N1lpx50X1jx1dC+zgDnjdMl/XWW21vxac5tFEwn4MELNLALE
         NSlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p08PIZzqfTtLKpMpvcfjkgXi7YZ5hppzI+ceyFXbf0w=;
        b=WDkum1g/lG5y/6m6mzUUrd9rCYBQR+mXvJ9JsFB/mHpTtH67qS61QBVA4j4VIrsLMf
         JQAWJAT/9Sqx/2OPsQnvL7UAmsi0SZplM1hr9r+1RItB+3OvQKTJxsBCoe8fs98I3n8d
         twq0GnleIcUW85pfxkF3/XeRI+ldB4bHz4TuSwcXtkcL8r9qnQjBpgnAzjNKrjRZgbbQ
         R+HsnTGkefEwZr+TegZPoMMhV43GhsLNipGGfX/oLm8A5Wo/TrTEVSVPNhKWEzmEvTsV
         RjMbceqiGQ5Ysz82Z+Yykp41Mm6QArxDVvrcs4uBgb4BjpTxU4Dsa3/sMCS25NcviMA1
         kEOg==
X-Gm-Message-State: APjAAAXD5T+CRXe4rhTv4prwqUG6e92REW0VGrBCyfaRfULTR5abKCWv
	vu6xwtj3haKiJMoPplQqk5E=
X-Google-Smtp-Source: APXvYqybxQUNyayzgmh9nKKPnPKQD/IYM2QFfyAT8/sBwYAZtFTcdyLROb/jfqgqhr63ptniOGdtnA==
X-Received: by 2002:a63:1a23:: with SMTP id a35mr3768569pga.411.1568312617993;
        Thu, 12 Sep 2019 11:23:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8309:: with SMTP id h9ls1621155pfe.13.gmail; Thu, 12 Sep
 2019 11:23:37 -0700 (PDT)
X-Received: by 2002:aa7:87d3:: with SMTP id i19mr50133796pfo.57.1568312617641;
        Thu, 12 Sep 2019 11:23:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568312617; cv=none;
        d=google.com; s=arc-20160816;
        b=tg/CMN1Kk8YPXalniIanZMHrHgWgMXf7nV/lj261K7FN4NtSnwjZVTd9js0yQnZjCJ
         Psxj0vsevSc5i/+G/18s4KuANbV8P84+bgb05ZzKWToegrWOlRHN2EPYwuEl1fjdVdOn
         6ZDXHfMAVMuaG3JoFOW/ZEElMwYri6yFXELA1Veei+mwZT93KJj26HXu5+yftRVIMZE6
         MqcCz4Pj6fGmirokrJOhSXF5YgSk2/6NkEOAXmqL79SWEhD7wa+4cP6Lh+ei4yldbEAH
         QUGJMWLJSpzuPvScq2tEVhxbO1xYXjNxWh62ul7mDlN132biivU0hxWXIp2h5QBRwrGL
         t+MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=78JyrL9tek75UcFEgFwy53c4FqMhpXdHHfICyKWy8F4=;
        b=qWCYnNGV87vIleFYiRZmGD5d1ZiAuSZknxTo6LpUmXyk83aNi0qtVOW1W9BwzlAdjx
         gOBNxMC4JKKCkirn4y46hKT9vCnpGgpDvUBvTqifVir1jFDoZqAruq4+9vE9Cuj0C4zv
         U6/+m2ttwPYRUcgw1EEAJU/M9hShmMI9CcTgqIJ/UPL8n8hwqkPQDXOzVwpbAzkA4hn+
         PeuswWwUJZkqHSY49gWi6NiSPYQJiGRKLTGSjobg2DoM9eBEWVlX9Ey0LpCypm+vh7FA
         Mc5yHUapQJVWm8Kf2CQjKFgAsqVN6gbLrlYyWkSh7SEnxcXn7S+KwXgoAWv6QljIouaY
         /AcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ax2LW9nI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id j21si1870416pfe.5.2019.09.12.11.23.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2019 11:23:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id j191so3358234pgd.3
        for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 11:23:37 -0700 (PDT)
X-Received: by 2002:a17:90a:c210:: with SMTP id e16mr33527pjt.123.1568312616944;
 Thu, 12 Sep 2019 11:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <201909121842.sj2MOxOb%lkp@intel.com>
In-Reply-To: <201909121842.sj2MOxOb%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Sep 2019 11:23:25 -0700
Message-ID: <CAKwvOdkqBiDCYKwUpJ7y8D0-KJQwvX142Y_ymdoWhDpF9mYt3Q@mail.gmail.com>
Subject: Re: [drm-drm-misc:drm-misc-next 17/17] drivers/gpu/drm/virtio/virtgpu_vq.c:361:5:
 error: void function 'virtio_gpu_queue_fenced_ctrl_buffer' should not return
 a value
To: kbuild test robot <lkp@intel.com>, davidriley@chromium.org
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@01.org, 
	kraxel@redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ax2LW9nI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

+ David in case this wasn't already reported.

On Thu, Sep 12, 2019 at 3:17 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: David Riley <davidriley@chromium.org>
> CC: Gerd Hoffmann <kraxel@redhat.com>
>
> tree:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
> head:   e1218b8c0cc1f8108be67ba3783d63eb4a50d792
> commit: e1218b8c0cc1f8108be67ba3783d63eb4a50d792 [17/17] drm/virtio: Use vmalloc for command buffer allocations.
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout e1218b8c0cc1f8108be67ba3783d63eb4a50d792
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/gpu/drm/virtio/virtgpu_vq.c:361:5: error: void function 'virtio_gpu_queue_fenced_ctrl_buffer' should not return a value [-Wreturn-type]
>                                    return -ENOMEM;
>                                    ^      ~~~~~~~
>    1 error generated.
>
> vim +/virtio_gpu_queue_fenced_ctrl_buffer +361 drivers/gpu/drm/virtio/virtgpu_vq.c
>
>    344
>    345  static void virtio_gpu_queue_fenced_ctrl_buffer(struct virtio_gpu_device *vgdev,
>    346                                                  struct virtio_gpu_vbuffer *vbuf,
>    347                                                  struct virtio_gpu_ctrl_hdr *hdr,
>    348                                                  struct virtio_gpu_fence *fence)
>    349  {
>    350          struct virtqueue *vq = vgdev->ctrlq.vq;
>    351          struct scatterlist *vout = NULL, sg;
>    352          struct sg_table *sgt = NULL;
>    353          bool notify;
>    354          int outcnt = 0;
>    355
>    356          if (vbuf->data_size) {
>    357                  if (is_vmalloc_addr(vbuf->data_buf)) {
>    358                          sgt = vmalloc_to_sgt(vbuf->data_buf, vbuf->data_size,
>    359                                               &outcnt);
>    360                          if (!sgt)
>  > 361                                  return -ENOMEM;
>    362                          vout = sgt->sgl;
>    363                  } else {
>    364                          sg_init_one(&sg, vbuf->data_buf, vbuf->data_size);
>    365                          vout = &sg;
>    366                          outcnt = 1;
>    367                  }
>    368          }
>    369
>    370  again:
>    371          spin_lock(&vgdev->ctrlq.qlock);
>    372
>    373          /*
>    374           * Make sure we have enouth space in the virtqueue.  If not
>    375           * wait here until we have.
>    376           *
>    377           * Without that virtio_gpu_queue_ctrl_buffer_nolock might have
>    378           * to wait for free space, which can result in fence ids being
>    379           * submitted out-of-order.
>    380           */
>    381          if (vq->num_free < 2 + outcnt) {
>    382                  spin_unlock(&vgdev->ctrlq.qlock);
>    383                  wait_event(vgdev->ctrlq.ack_queue, vq->num_free >= 3);
>    384                  goto again;
>    385          }
>    386
>    387          if (hdr && fence) {
>    388                  virtio_gpu_fence_emit(vgdev, hdr, fence);
>    389                  if (vbuf->objs) {
>    390                          virtio_gpu_array_add_fence(vbuf->objs, &fence->f);
>    391                          virtio_gpu_array_unlock_resv(vbuf->objs);
>    392                  }
>    393          }
>    394          notify = virtio_gpu_queue_ctrl_buffer_locked(vgdev, vbuf, vout);
>    395          spin_unlock(&vgdev->ctrlq.qlock);
>    396          if (notify)
>    397                  virtqueue_notify(vgdev->ctrlq.vq);
>    398
>    399          if (sgt) {
>    400                  sg_free_table(sgt);
>    401                  kfree(sgt);
>    402          }
>    403  }
>    404
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkqBiDCYKwUpJ7y8D0-KJQwvX142Y_ymdoWhDpF9mYt3Q%40mail.gmail.com.
