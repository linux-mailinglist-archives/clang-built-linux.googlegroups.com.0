Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB543USEQMGQEHCYTKOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE493F9C1A
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 18:08:25 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id h13-20020a170902f54d00b00134c35c8d05sf2602797plf.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 09:08:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630080503; cv=pass;
        d=google.com; s=arc-20160816;
        b=p5M1ZbWvVXjQoMB/xvIiRL2qw8ymcHADTwxoKNbkM1IT/79/pdVUJAOG8b49Isnn95
         WnYmx1qiOWU4FmaH43LTNHU/xgYbpUefQm41pC5tNZnelzo0LI1H7xx5mbH0HkJCAsEH
         eoIC0upW1OGiCHENvPZQJxueX9Fdjm1cZASNaGSpDgDs1PKoqV7xtjIsfpQe3ny04aHl
         LDLhH6h+PDLpurja3+zuzFOG2lUGm2Sycx5HfVGmTR472MouHtTXGaIIq147QFMjHAhX
         /sQCYAyu+iXw+BZ56lHb1XmYI+G022TAwiG8cNz95z4TpFsYaiAqFDHMN6c3bAjO8CWf
         vdUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cZA06etOD6aZS5oeqv1tV4klYvOWsyCkjq2K1gj9SyI=;
        b=IecmD9HLmACx5rI9R/YRwKnayNvVaectwS2N3aoklTucMlPva8SwYogN7tjD7T3Sli
         1jpFtqu6e+3idSUoEmDMmZIzBUpbW9MoxlSUaR7aZo8k/2ZgOC8WA5VII6xMAdXGL/2K
         ej7tdpJyY/hoWZtEAsDcVcyD6ov6BtYP5KyAY38bj/LwBc6St0ULVN1dq/J11q2KMFpT
         37JrqMRDZ1GcS5U0qqspgBmmI3o/9Bcc3BWQn1CJhkSqO34fhDMLjbcLQtnYRYz3ROiD
         mYxjtdv6pmqnhLqnf5d0c0/FmASn6UAN2ZWI9jSssf3dWkPW0L8Pwkqsw4/8FdFp/Ehc
         nhWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LgSMkv8y;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cZA06etOD6aZS5oeqv1tV4klYvOWsyCkjq2K1gj9SyI=;
        b=r5OHcyWi7cfARYDVA2MtevTnnuDXReVGlXVndnuSDTcFEGGN+Mc3gDqNaX7/5h6RgL
         /9USj384KShbiJamrzQ+O8/aldLJrKemnrUYJ0XagFkcCsIEyhGdAuakmCTFGU8YPXh8
         rbYzzs27gucNol3W1UZGGQBjY0Nie2v9ioNHuM6rBSmpP+s+FSRzD2OqtEIZieU7fnS0
         uwfGOrjbkTjg8COKR2iyNisplMsGB1vROudc7Xxv1pDo6Hdjv6w0K9HeC37gD+iDGYX7
         lE0S2bx/Ehyd886lMkRKV+/vWD0M3NhzSrsBXRt9550UKa8rU079sgBWxfWq84IpirNT
         AhCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cZA06etOD6aZS5oeqv1tV4klYvOWsyCkjq2K1gj9SyI=;
        b=KtRJylbqzZkWC/I1r3kjio1oV7s5cCi+3aLYx6VxsbQEGqCe0FBgLdWWAhLlGt3C7H
         JPmp9jVL99/ccEmEPgBHdRvIEKXSZ5cc92Vx66+xPAnyMiWmIK/eYKQFibD4UsgtiVSw
         wD7QDXp2zB8zJFwu86F3L+byYxOSPYLOFNmma59yDxKDXvXtihqKnDAvunT8qzg9wl/i
         31uVfNxpDn7AvBebXgwIh+CFHdpWeRRrzfv8xv7ppZhGdbhF4Gh0arDwlnqBH2KEUgz/
         DkhrPXYcaR4LTalGTe87CYBNp9FRZcJTR79PwrXJQUxUelPxlK7dreZG8TG6p2GbIrCy
         Trjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uuEbP9b0gs/59+7wavxyI98KYnEhyo/wTS1l+1yMeElutvJA6
	KQByU3gECe0/7zHxxZB5m8s=
X-Google-Smtp-Source: ABdhPJx883LArcl9upgLPcewU0J6sq5xi5C7Hn7CZZOZofGQ5LjpXdKhbXqkibopU0eKOpji9wrhdA==
X-Received: by 2002:a17:902:7b8b:b029:12b:8d3e:70e7 with SMTP id w11-20020a1709027b8bb029012b8d3e70e7mr9219137pll.76.1630080503585;
        Fri, 27 Aug 2021 09:08:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3fc2:: with SMTP id u2ls2523040pjm.0.gmail; Fri, 27
 Aug 2021 09:08:23 -0700 (PDT)
X-Received: by 2002:a17:90a:4894:: with SMTP id b20mr11857664pjh.13.1630080502976;
        Fri, 27 Aug 2021 09:08:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630080502; cv=none;
        d=google.com; s=arc-20160816;
        b=QCoyI+w4l8E7srcOT1G0qxlqxMwWeJIL2fkkt4173s5RRPdYnuzOxkPHh8QIHXlKHP
         nBPmeflNymtLVDYdq69rXf0cIKKzFVxR56fgXBdamugB8DKDpIVjf2IdVMv4+GpAKaum
         znH00IF6T3NFjO7/mDiakZWx8vPuPpVlldaABFGpMS9kr6ywfg/ubkw9OYSZ5qfVo0B4
         h236/czkwocLdIoV+WW+I3WZIX8Tf5i9PZNaT7/KvON7U6ZUpoa5slBleNUEKvpIGy1Q
         qwZnlZP94C6rZtDDeivAxtthQxYvQpZwve+gs4Jgu5Ghw7HjtmiBjgBpnqBWOzg6tXUy
         vLYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3BOREjcUGdekjt/HzJv8JPNZZV+WRxv1ga5r5CaLfMg=;
        b=LDGPy8ZaiyyRHMiBSQScWbSHP4Am+ZF3A+6wZTUb5Rx0ruzUbJSQZRIfmhR6Fn+OCg
         xaxvPwT+XvkTI2nb+FsXQxfP3jnlFWphPeubDWy2J+1pBgxhN4u4Kjg2LGxUmS5AzUMR
         K6Kce43IRiw7qIJ0p7gTvo1ltsXhHrO0HFd/awOgtJWJu5YTymZJFaMsaIVOP5xk1N73
         nAe/kvccAwQuo+TkqbH49seKI6E9UO7WsCz1l5QpWKTdgi5+XbBTXP3IOr1i/eVxMo0s
         lMjIduj2qE/6C2Z6Ilgp5iP9Y0/VxonRG3W6uUWaaEl5MC7Eyq1w2UTL96GJ719Y7KDF
         GjzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LgSMkv8y;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id r7si555180pjp.0.2021.08.27.09.08.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 09:08:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id h1so4863073pjs.2
        for <clang-built-linux@googlegroups.com>; Fri, 27 Aug 2021 09:08:22 -0700 (PDT)
X-Received: by 2002:a17:90b:357:: with SMTP id fh23mr8796487pjb.140.1630080502650;
        Fri, 27 Aug 2021 09:08:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h9sm13930821pjg.9.2021.08.27.09.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 09:08:21 -0700 (PDT)
Date: Fri, 27 Aug 2021 09:08:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: linux-kernel@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Ayush Sawal <ayush.sawal@chelsio.com>,
	Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Kalle Valo <kvalo@codeaurora.org>, Jakub Kicinski <kuba@kernel.org>,
	Stanislaw Gruszka <stf_xl@wp.pl>,
	Luca Coelho <luciano.coelho@intel.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Johannes Berg <johannes.berg@intel.com>,
	Mordechay Goodstein <mordechay.goodstein@intel.com>,
	Lee Jones <lee.jones@linaro.org>,
	Wolfgang Grandegger <wg@grandegger.com>,
	Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
	linux-crypto@vger.kernel.org, ath10k@lists.infradead.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-can@vger.kernel.org,
	bpf@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 2/5] treewide: Replace open-coded flex arrays in unions
Message-ID: <202108270906.7C85982525@keescook>
References: <20210826050458.1540622-1-keescook@chromium.org>
 <20210826050458.1540622-3-keescook@chromium.org>
 <20210826062452.jekmoo43f4xu5jxk@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210826062452.jekmoo43f4xu5jxk@pengutronix.de>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LgSMkv8y;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
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

On Thu, Aug 26, 2021 at 08:24:52AM +0200, Marc Kleine-Budde wrote:
> On 25.08.2021 22:04:55, Kees Cook wrote:
> > In support of enabling -Warray-bounds and -Wzero-length-bounds and
> > correctly handling run-time memcpy() bounds checking, replace all
> > open-coded flexible arrays (i.e. 0-element arrays) in unions with the
> > flex_array() helper macro.
> > 
> > This fixes warnings such as:
> > 
> > fs/hpfs/anode.c: In function 'hpfs_add_sector_to_btree':
> > fs/hpfs/anode.c:209:27: warning: array subscript 0 is outside the bounds of an interior zero-length array 'struct bplus_internal_node[0]' [-Wzero-length-bounds]
> >   209 |    anode->btree.u.internal[0].down = cpu_to_le32(a);
> >       |    ~~~~~~~~~~~~~~~~~~~~~~~^~~
> > In file included from fs/hpfs/hpfs_fn.h:26,
> >                  from fs/hpfs/anode.c:10:
> > fs/hpfs/hpfs.h:412:32: note: while referencing 'internal'
> >   412 |     struct bplus_internal_node internal[0]; /* (internal) 2-word entries giving
> >       |                                ^~~~~~~~
> > 
> > drivers/net/can/usb/etas_es58x/es58x_fd.c: In function 'es58x_fd_tx_can_msg':
> > drivers/net/can/usb/etas_es58x/es58x_fd.c:360:35: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'u8[0]' {aka 'unsigned char[]'} [-Wzero-length-bounds]
> >   360 |  tx_can_msg = (typeof(tx_can_msg))&es58x_fd_urb_cmd->raw_msg[msg_len];
> >       |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > In file included from drivers/net/can/usb/etas_es58x/es58x_core.h:22,
> >                  from drivers/net/can/usb/etas_es58x/es58x_fd.c:17:
> > drivers/net/can/usb/etas_es58x/es58x_fd.h:231:6: note: while referencing 'raw_msg'
> >   231 |   u8 raw_msg[0];
> >       |      ^~~~~~~
> > 
> > Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Ayush Sawal <ayush.sawal@chelsio.com>
> > Cc: Vinay Kumar Yadav <vinay.yadav@chelsio.com>
> > Cc: Rohit Maheshwari <rohitm@chelsio.com>
> > Cc: Herbert Xu <herbert@gondor.apana.org.au>
> > Cc: "David S. Miller" <davem@davemloft.net>
> > Cc: Kalle Valo <kvalo@codeaurora.org>
> > Cc: Jakub Kicinski <kuba@kernel.org>
> > Cc: Stanislaw Gruszka <stf_xl@wp.pl>
> > Cc: Luca Coelho <luciano.coelho@intel.com>
> > Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
> > Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
> > Cc: Alexei Starovoitov <ast@kernel.org>
> > Cc: Daniel Borkmann <daniel@iogearbox.net>
> > Cc: Andrii Nakryiko <andrii@kernel.org>
> > Cc: Martin KaFai Lau <kafai@fb.com>
> > Cc: Song Liu <songliubraving@fb.com>
> > Cc: Yonghong Song <yhs@fb.com>
> > Cc: John Fastabend <john.fastabend@gmail.com>
> > Cc: KP Singh <kpsingh@kernel.org>
> > Cc: Johannes Berg <johannes.berg@intel.com>
> > Cc: Mordechay Goodstein <mordechay.goodstein@intel.com>
> > Cc: Lee Jones <lee.jones@linaro.org>
> > Cc: Wolfgang Grandegger <wg@grandegger.com>
> > Cc: Marc Kleine-Budde <mkl@pengutronix.de>
> > Cc: Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>
> > Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
> > Cc: Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>
> > Cc: linux-crypto@vger.kernel.org
> > Cc: ath10k@lists.infradead.org
> > Cc: linux-wireless@vger.kernel.org
> > Cc: netdev@vger.kernel.org
> > Cc: linux-scsi@vger.kernel.org
> > Cc: linux-can@vger.kernel.org
> > Cc: bpf@vger.kernel.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  drivers/net/can/usb/etas_es58x/es581_4.h          |  2 +-
> >  drivers/net/can/usb/etas_es58x/es58x_fd.h         |  2 +-
> 
> For the can drivers:
> 
> Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

Thanks!

> BTW: Is there opportunity for conversion, too?
> 
> | drivers/net/can/peak_canfd/peak_pciefd_main.c:146:32: warning: array of flexible structures

Oh, hrmpf. This isn't a sane use of flex arrays:


struct __packed pucan_rx_msg {
	...
	__le32	can_id;
	u8	d[];
};

struct pciefd_rx_dma {
        __le32 irq_status;
        __le32 sys_time_low;
        __le32 sys_time_high;
        struct pucan_rx_msg msg[];
} __packed __aligned(4);

I think that needs to be handled separately. How are you building to get
that warning, by the way? I haven't seen that in my builds...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108270906.7C85982525%40keescook.
