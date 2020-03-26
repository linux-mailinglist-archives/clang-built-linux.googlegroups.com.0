Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA4T6TZQKGQEBN66XTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C164194814
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 20:59:00 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id f20sf6312579iof.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 12:59:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585252739; cv=pass;
        d=google.com; s=arc-20160816;
        b=J3C92xdS5/Grv4v1rFz0/5h+eKq9THYmXaIFCst6OtlvB1RipIWB5FUf7931vqjq9Y
         yCcKwQdX+tPB0bBNZZsb5JBITU2ygFjquB7FewSNVO+hdKqVZ8XTzLyAA6Ptef3aW1tP
         XB4LirzIs4N3iKt6whBGysDhaOxLJazMZ6zq7rG/m+32sg9azLBLNrj2XfWgBqrsMAZw
         1T7ZCLcmyLgLzhMP5r54Ov62pVFE63RATyH0iQbM4pycLwoAt+NjJ1qB+DuqVKimXXVA
         abZS168kBs83KsHlCb5X4cHOloG3NUqYbi547lgJi/Y//fs429RQUx65k9qNf9iEJcO5
         WKbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=O4XhfFIZIAkhUuRYkdAHhQf5NHLkNcwa1fFArDMM4bk=;
        b=xR6wufzPVryC+3Eu6j9J+eZCzeumUTsfcIIU8hzusr69Czq8YBS97HeXfUnUGrz7m2
         0uGZK/cCqTwmvIZqQTSQntRTS/iYC9v7Gu0ge71xMGRcSk8e7hhYxfv7TMNcR2eUwYCW
         uKuCCzoW/LhXJdszBRdES7ELIGFfiGV/mpedexk/cX9CrCjLNAROdwRNhAdUzi9oSax9
         o0u2OfhXP4xnyN7vZGfkUkpgV7iWRt4esustZNdjcngHNb2abucojqhNtwBAioKjeL2Z
         YyvRDLArnXph0Z6NdcJtYwRBXsugJ9Ka5Wg0YIZJ9agQ8b05bvfZH3ZRTs5o8wfnwt23
         4FyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dqhFaSe+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O4XhfFIZIAkhUuRYkdAHhQf5NHLkNcwa1fFArDMM4bk=;
        b=YGa/1KOqjqEnektQGWQDwQH+zq9og2xH17MUzyK3McXsLLr4MiOE8TzF1cBEDPfrX9
         3rxUZS9owBSkEU6tKJ/xFyv9IRhJcz/T1UOoRzm4v5kPMVng9kgQ+cODC7SVxh8sDGc1
         NLiAOgmph8/J4ZISzFzNheP8jktdVAn7+jOGaPxEWr0LTwcjOa0QMcTcwUBmTWlPegfe
         okq96mbp4kTciIINski8NBB3Tx5SNUo7uGdAHWueJ4YUN5NyU7Eide0WmNbnGOloLtmm
         reQMdVrbaLuMvSluzClxC7DEzhyENvgdY3E1s3cHSxGzP2UjCl6cMJhA7opoODRSz3sY
         Thiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O4XhfFIZIAkhUuRYkdAHhQf5NHLkNcwa1fFArDMM4bk=;
        b=GOFV2unsb3DI7LSzoYdbNp3ItbT4MEAYQTnqa9DA1ttagayahUF+K06ETlZEUcCpH4
         s4uPOSc8jRKWq6Ou+EbwaxR2HTNtAala52R2sn8b/ee8Sp7s0rUdc/EIFQMSwdR/1xbC
         WsUXogehNkWFKtFgfFPeHoMArmTCBmQoN3d2ZCt1zT0adOaAlvv1CF5o4456z4y1VaLO
         ZsJSC1DuixHsx8Yr3TLAzAcsqFpm2AZ0CSmPgZ1pjQdDJS5iu5XZrlt/O/e7h2pG0p1U
         pD0atFGA7LwUE+BU24iJ+L0mAhujOpVjQBpsIKnHzRAaNxhRmF1LTPxGDnHuJR1wgxts
         pLlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O4XhfFIZIAkhUuRYkdAHhQf5NHLkNcwa1fFArDMM4bk=;
        b=UN3jM0qVZ07ebAfLMBRVlfJAwEJmSveV6lYboPdqfHfkrWxfDorCNt/xzfnLWeXQBl
         NUUuU1FlSqoolgb95WPTV30Zwi7OhR4HYpJrjVLqtCCehwRrDj6wwYCdrQh2G9KvD2Br
         hCxZJzapo+JClm5vyS/irzqFJcoLxJcmjYDp5UfqIqRYhDYn35g1iV42x/VmkJr19EQ0
         /yt8uO4l4ay0BQwvFXR3r18XB7jjI2OThWKG3Lgkc+l/ykjtIJJ2nLN2dFH59/3BXvKQ
         gReQHfZaHwvuds6jyUqVl1IMtBIhEWQCdlShRDE3DY5bHUjamiw7lXRYqNDb6BM+nrrc
         Gs5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0xCEQH+AN2ZZ52EPs7Fww0wLNUnSaTZHJoTbArKE5VzukrAtdb
	FVsuCPJX+kFKXuaoDBECSXg=
X-Google-Smtp-Source: ADFU+vuYZJfNdVb2S3p5H6IlX+N7ZC9U+SVivTLsWYvahoJkOTojNvnJpYZZ0Z+c3O+Ij2ZEn5aoUw==
X-Received: by 2002:a92:3993:: with SMTP id h19mr10869178ilf.177.1585252739470;
        Thu, 26 Mar 2020 12:58:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:778d:: with SMTP id s135ls1908253ilc.2.gmail; Thu, 26
 Mar 2020 12:58:59 -0700 (PDT)
X-Received: by 2002:a92:d2c2:: with SMTP id w2mr2988268ilg.167.1585252739017;
        Thu, 26 Mar 2020 12:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585252739; cv=none;
        d=google.com; s=arc-20160816;
        b=LkuE1GnY2e68WQOH4jKWjm2GgA/KKMLDd8aW3OwQvX7/wsgQzIZhWBEWPyEXBFMwPG
         dFPHIzJz38PZV/orVy4xr0nZDqEU+iX0ufMZnOyxFGqaecqCtQUCxYhbqn0faZvrGqic
         kkPza+RfenMawDB73rfjw9oeXVMXsz5ub75GF0TwfOxqmbgSFDVDlD/nZyo3TSSqAlzz
         ZOaQmgWVTjtxXsI49sLCml+HcFHq8PvQAOtlzIoGcD4npjP1i7rYM8nyEvW28zKM2S5u
         Wo98nJBTBJcOB0/ksbyGosCs/XaQo3BpbIzvqQrzsQu75ZfbcC/bm3jlojatv7HwPAym
         koZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ujm9KF63/2Xh115nBCNoaxnV0BjyE1MHL3TYCViqZyo=;
        b=BuUcjX9a2/O5TA08kHMsjEFyYANbv5bYzyjRQuMHdi0EIu/wF+khz+WGph3MrlNgFj
         HYMPjxeCI66G+F22DdFAaaT1XQ4WBfeej2Hk4IqWJOm2PoBF/X+AHBmA6G1Xgb4Klu/7
         EtImc/+IoHT/k82ZNEeLJOzSpPbUoOtjKPAkDbC1nvgTglI++o/h/aso6/jE7pCT5zGZ
         hHuFvA5YJUNg29h0szaLgNqRYm7k/RNH6Qg1g5LFT7/Zwh72by8gyU72Aa9JpQNT4ksl
         bntfmbrzw1vlvUkWBRweggVmSiHci0gWhA407pVZv1A+HqY9ylMxc6E6ufJJviEnwmA5
         AYcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dqhFaSe+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id k88si192603ilg.1.2020.03.26.12.58.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 12:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id j16so7327912otl.1
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 12:58:59 -0700 (PDT)
X-Received: by 2002:a9d:8d0:: with SMTP id 74mr7767203otf.39.1585252738620;
        Thu, 26 Mar 2020 12:58:58 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b26sm864123oti.3.2020.03.26.12.58.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Mar 2020 12:58:58 -0700 (PDT)
Date: Thu, 26 Mar 2020 12:58:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Felipe Balbi <balbi@kernel.org>
Cc: Ashwini Pahuja <ashwini.linux@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] usb: gadget: udc: bdc: Remove unnecessary NULL checks in
 bdc_req_complete
Message-ID: <20200326195855.GB29213@ubuntu-m2-xlarge-x86>
References: <20191023002014.22571-1-natechancellor@gmail.com>
 <20200221045740.GA43417@ubuntu-m2-xlarge-x86>
 <CAKwvOdku24UV8J4uSKFFc7gmwOP28-8K352BJepb_z-octFoPw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdku24UV8J4uSKFFc7gmwOP28-8K352BJepb_z-octFoPw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dqhFaSe+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Feb 24, 2020 at 01:42:57PM -0800, Nick Desaulniers wrote:
> On Thu, Feb 20, 2020 at 8:57 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > I know it has been a while but ping?
> 
> Sorry! Too many bugs...barely treading water! Send help!
> 
> >
> > On Tue, Oct 22, 2019 at 05:20:15PM -0700, Nathan Chancellor wrote:
> > > When building with Clang + -Wtautological-pointer-compare:
> > >
> > > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of
> > > address of 'req->queue' equal to a null pointer is always false
> > > [-Wtautological-pointer-compare]
> > >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> > >                              ~~~~~^~~~~    ~~~~
> > > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of
> > > address of 'req->usb_req' equal to a null pointer is always false
> > > [-Wtautological-pointer-compare]
> > >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> > >                                                     ~~~~~^~~~~~~    ~~~~
> > > 2 warnings generated.
> > >
> > > As it notes, these statements will always evaluate to false so remove
> > > them.
> 
> `req` is an instance of a `struct bdc_req` defined in
> drivers/usb/gadget/udc/bdc/bdc.h as:
> 333 struct bdc_req {
> 334   struct usb_request  usb_req;
> 335   struct list_head  queue;
> 336   struct bdc_ep   *ep;
> 337   /* only one Transfer per request */
> 338   struct bd_transfer bd_xfr;
> 339   int epnum;
> 340 };
> 
> So indeed the non-pointer, struct members can never be NULL.
> 
> I think the second check that was removed should be
> `req->usb_req.complete == NULL`, since otherwise `&req->usb_req` may
> be passed to usb_gadget_giveback_request which tries to invoke the
> `complete` member as a callback.  There are numerous places in
> drivers/usb/gadget/udc/bdc/bdc_ep.c that assign `complete = NULL`.
> 
> Can the maintainers clarify?

$ sed -n 537,555p drivers/usb/gadget/udc/bdc/bdc_ep.c
/* callback to gadget layer when xfr completes */
static void bdc_req_complete(struct bdc_ep *ep, struct bdc_req *req,
						int status)
{
	struct bdc *bdc = ep->bdc;

	if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
		return;

	dev_dbg(bdc->dev, "%s ep:%s status:%d\n", __func__, ep->name, status);
	list_del(&req->queue);
	req->usb_req.status = status;
	usb_gadget_unmap_request(&bdc->gadget, &req->usb_req, ep->dir);
	if (req->usb_req.complete) {
		spin_unlock(&bdc->lock);
		usb_gadget_giveback_request(&ep->usb_ep, &req->usb_req);
		spin_lock(&bdc->lock);
	}
}

It looks like req->usb_req.complete is checked before being passed to
usb_gadget_giveback_request. So the patch as it stands is correct,
unless those checks needed to be something else.

Felipe, could you clarify or pick up this patch if it is correct? This
is one of two warnings that I see for -Wtautological-compare and I want
it turned on for 5.7 and it'd be nice to be warning free, especially
since I sent this patch back in October :/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326195855.GB29213%40ubuntu-m2-xlarge-x86.
