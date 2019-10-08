Return-Path: <clang-built-linux+bncBCNODNHUQUJBBU5Y6PWAKGQEI4HZPQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id AA208D00E6
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 20:58:28 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id n3sf16087717ywh.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 11:58:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570561107; cv=pass;
        d=google.com; s=arc-20160816;
        b=lueN35uUqyXZn1ODi8H5+D3qpaaYjxClyJ9q3wWbwwsVq62837/Fk3HA+GEk987AWk
         /wDqn9ovKhq8hJSealUoaULZSdvFzQg+vDpfpjVGM/HOBGYTpt6I4EC87RhGMuBpBfso
         x2kzTSSg/kXCjfkyJg6rjILjn9NdLN7J1N4PIOHKYvQ6eZJLFLX+SnxeOckIZGOt1XOD
         H2z2/5jDl1dotJ6WqNthZRxqKjnLlKCY4WNbzQAW9km5wWwe0FZBGvjfto583Yyv/+pH
         /NmAYBEZDVHPwQhNs5xVsvY8YLMu03dGpC2S+mk15ztSQRfQO5uZ5WcbHre8dKiAtMQj
         nAYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=D6cs5B6APVbwowXamFVaUl5yfBCJyEOVxRmIJCF71GY=;
        b=pCIb+/QC9Cku3k9Y9Y1NloaJuk0ZdBU+BMPXJZxwufiVJ9Cmrsz2vBmiDhBetVhUHw
         IIg8NCHEn9DD8SNEoH7clmHq1a4kywue7qKgF3Zc55IuiBxKBMKu21FDoCApRwODIwy4
         SWnmJKjXMpo9n9CdDZfCVEvGfCGL++WHAWJITKLqvGSsSiLmoShIQIcRD31VMRpLBJm2
         gilrrAM3uvSUvb9QELIONqy/vNXl3gzthXEO5w/PAK9O4gc7TM1wf2pQtkyOJ/bZwgQ3
         a53sguKBuax7r4J1XXatJLZ2Cbv386Ek/okqxnCaiGeAaFJtgFnnOxEXgsWYABT304oI
         ObBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TNle+G1K;
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D6cs5B6APVbwowXamFVaUl5yfBCJyEOVxRmIJCF71GY=;
        b=pqxKUQRdIt1O/Y7mi170aQGzskavhS5MWhY+0VbFIB9dBhL5EicIXObRqQRhsVrgZz
         +U3YpiOortXcUD4HNirCVTdXx7ANxlck7+5M4KSHaMFLSpERMVdsKEfPMMHe4+4Kipkr
         brTLZ0DT07M+jOoJHgcWfRjX57BgQjKzCdN8NdqqCpyj6m/quyOpZIAnN+SQ7OEX1Neu
         HlKq9qT785Hpq/vpDlTMAayqcZy+NwlZKbO/yZTrIqd0rz2bB4F0WdXxfs/QeywgxPPs
         yuHKbeLrdlPhkEMZDGNbUCedgarueVxLmzAaQ09Z2QZ3GvzqQbEaZNhccEMNs6CwDYfQ
         qGCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D6cs5B6APVbwowXamFVaUl5yfBCJyEOVxRmIJCF71GY=;
        b=ohULzCCOoEH9HuO14nLyJEfmnZAOu4IurUKc8cha1HZHAVaGv1wmu5tnU2+q80w8iL
         RkUyb0YEsSzBn6LfTyfDzp85qdh2tIznuWVxKMNgwKvUYTLhD4/KBkLPrWsExzdNOhvf
         ozek8/RX/XqMBx1IkgNcLuYlz8cSk8MgwWGMBc9rZ6qjcl2UK1c25g7wVLW4gKrs3QLx
         V5ZVNZSEmXGS3vs7xnz0tmVJXV1LsGF8ZjT5L9mRvfmTd9G/+JAso4PPaMYgl7c/OCth
         gFEVvsZvb6ZdnhAOCbyCXH1bhVmEBtY4mKlWdocsSiAHU2JwLvoUOdlSpdvqHgnkjlTJ
         xkEQ==
X-Gm-Message-State: APjAAAWzRdyNumyr2sMAGSb84YIbaPi5UPzvgo2helWNj/69ne5Ze10m
	zQvudjnQwpb/knTVjAZvrTA=
X-Google-Smtp-Source: APXvYqyBW/BblNNGI1KNrsXi4yP0CXbis+fhmsl/55WmmyCEwIJhYA/6OdBcQzmuPnM7N2cu/Wpyeg==
X-Received: by 2002:a25:e68f:: with SMTP id d137mr13689663ybh.96.1570561107384;
        Tue, 08 Oct 2019 11:58:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e54:: with SMTP id j81ls727320ybc.11.gmail; Tue, 08 Oct
 2019 11:58:26 -0700 (PDT)
X-Received: by 2002:a25:6b46:: with SMTP id o6mr8766833ybm.101.1570561106698;
        Tue, 08 Oct 2019 11:58:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570561106; cv=none;
        d=google.com; s=arc-20160816;
        b=wIUXayLX+BEovmUG+on7ffwquAsonZgc6AgKxmQ3Sr3fmGeVhMnbD3wgQn7r8pAPZN
         TlZFINfifrClKw9nWReYpXXNLXN7NxINtZlyng4tBjHD/dY4t3vaZgvsa0ajZJTDrAXw
         JBLgVOmzacAR6dxkhNFJbdm6mbMzPzylAp5BZCqvyjGXg/jcuRYPPJt0QOL20AJQKTfN
         Bz6adhwOtonj7PnozZNj0M5HhuiRvmd63uEvlA0pSCI9fZIrAaeYXrdGqSim4sNVasGR
         FTEL5K2XlIFfKDjAbKLqPBqvzkd3ayGZFw8eIP/hc1bd6rhmF8ZwY4rNM0UaV2VBPKaU
         iQiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Sdd8UeD7EiCxoJwTM/QPh2OA+sefTqXvnnv/jjwK0zw=;
        b=LFtwQaGcrspUku667E5mGm/9nrbJ29V+QK4GLChY6FJCn8ZClTKybria+gfG0/r32C
         53Tejlxyp/eVSitB/FRcAaCzH8nB60I33QzLR1kcBx1jOg8HoIB4SXAhHo4Nvvg7z8Ya
         sZSrXE4DB1YULBhhdE56bnjKjrHEaiKmLmLbAdVMTwINuLToxb/k1zrpjWeyJWBHX1om
         S8pGGmiXdwhoKIO3yrDMD7qpWI1v8EW1bx0yrcC3Qic9AtuPkvo2Vvn3piDcXTsHHdia
         ASYAQh8qysMMdTXJ4/rxIhu2no2XCnqE8olkxP4wgWoUCN11/BF1OcrFY/a4mQTTta+P
         u0lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TNle+G1K;
       spf=pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=saravanak@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a1si1221812ywh.3.2019.10.08.11.58.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 11:58:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id a15so9728878oic.0
        for <clang-built-linux@googlegroups.com>; Tue, 08 Oct 2019 11:58:26 -0700 (PDT)
X-Received: by 2002:aca:51c7:: with SMTP id f190mr5258340oib.69.1570561105608;
 Tue, 08 Oct 2019 11:58:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190904211126.47518-1-saravanak@google.com> <20190904211126.47518-4-saravanak@google.com>
 <20190911102926.A9F8D2082C@mail.kernel.org> <20191004153750.GB823823@kroah.com>
 <20191008145304.2BD54205F4@mail.kernel.org>
In-Reply-To: <20191008145304.2BD54205F4@mail.kernel.org>
From: "'Saravana Kannan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Oct 2019 11:57:49 -0700
Message-ID: <CAGETcx-FjF+bktBgL6h0ORH3MU4vMM9JNC2oB8Myn8KqvnmhDg@mail.gmail.com>
Subject: Re: [PATCH v11 3/6] of: property: Add functional dependency link from
 DT bindings
To: Stephen Boyd <sboyd@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-acpi@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	David Collins <collinsd@codeaurora.org>, Android Kernel Team <kernel-team@android.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: saravanak@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TNle+G1K;       spf=pass
 (google.com: domain of saravanak@google.com designates 2607:f8b0:4864:20::244
 as permitted sender) smtp.mailfrom=saravanak@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saravana Kannan <saravanak@google.com>
Reply-To: Saravana Kannan <saravanak@google.com>
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

On Tue, Oct 8, 2019 at 7:53 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Greg Kroah-Hartman (2019-10-04 08:37:50)
> > On Wed, Sep 11, 2019 at 03:29:25AM -0700, Stephen Boyd wrote:
> > > Quoting Saravana Kannan (2019-09-04 14:11:22)
> > > > +       int ret = 0;
> > > > +       struct device_node *tmp_np = sup_np;
> > > > +
> > > > +       of_node_get(sup_np);
> > > > +       /*
> > > > +        * Find the device node that contains the supplier phandle.  It may be
> > > > +        * @sup_np or it may be an ancestor of @sup_np.
> > > > +        */
> > > > +       while (sup_np && !of_find_property(sup_np, "compatible", NULL))
> > > > +               sup_np = of_get_next_parent(sup_np);
> > >
> > > I don't get this. This is assuming that drivers are only probed for
> > > device nodes that have a compatible string? What about drivers that make
> > > sub-devices for clk support that have drivers in drivers/clk/ that then
> > > attach at runtime later? This happens sometimes for MFDs that want to
> > > split the functionality across the driver tree to the respective
> > > subsystems.
> >
> > For that, the link would not be there, correct?
>
> The parent device (MFD) would have the links because that is the device
> node with the provider property like '#clock-cells'. The child clk
> device that's populated by the MFD would be the one actually providing
> the clk via a driver that may probe any time later, or never, depending
> on if the clk driver is configured as a module or not. I fail to see how
> this will work for these cases.
>
> Is this logic there to find the parent of a regulator phandle and match
> that to some driver? It looks like it.

In the case of an MFD creating "fake" children devices, the parent MFD
device's driver is responsible for handling the sync state callback.
It'll get the sync_state callback after all the child devices'
consumers have probed. The MFD driver will need to do the sync state
clean up for the children devices or pass it on to the child devices'
drivers (whatever makes sense for that specific MFD) by whatever means
those specific drivers talk to each other (direct calls, registering
callbacks, etc).

If they are real sub-devices, then they should really be captured in
DT as child devices and then the child device's drivers will get the
sync state callback directly.

> >
> > > > +static int of_link_property(struct device *dev, struct device_node *con_np,
> > > > +                            const char *prop_name)
> > > > +{
> > > > +       struct device_node *phandle;
> > > > +       const struct supplier_bindings *s = bindings;
> > > > +       unsigned int i = 0;
> > > > +       bool matched = false;
> > > > +       int ret = 0;
> > > > +
> > > > +       /* Do not stop at first failed link, link all available suppliers. */
> > > > +       while (!matched && s->parse_prop) {
> > > > +               while ((phandle = s->parse_prop(con_np, prop_name, i))) {
> > > > +                       matched = true;
> > > > +                       i++;
> > > > +                       if (of_link_to_phandle(dev, phandle) == -EAGAIN)
> > > > +                               ret = -EAGAIN;
> > >
> > > And don't break?
> >
> > There was comments before about how this is not needed.  Frank asked
> > that the comment be removed.  And now you point it out again :)
> >
> > Look at the comment a few lines up, we have to go through all of the
> > suppliers.
> >
>
> Ok. The comment tells me what is happening but it misses the essential
> part which is _why_ we must make links to each supplier and return
> -EAGAIN.

To be clear the -EAGAIN is only if any of the linking fails.

The reason was already discussion in the email thread [1] but I agree
it needs to be documented.

I thought I had documented the _why_ in the documentation for
fwnode.add_links(), but it's not there. I'll check to make sure I
didn't capture it elsewhere and if not, I'll update fwnode.add_links
documentation.

To copy-paste the discussion from the earlier thread:

"Actually, there is a point for this. Say Device-C depends on suppliers
Device-S1 and Device-S2 and they are listed in DT in that order.

Say, S1 gets populated after late_initcall_sync but S2 is probes way
before that. If I don't continue past a "failed linking" to S1 and
also link up to S2, then S2 will get a sync_state() callback before C
is probed. So I have to go through all possible suppliers and [link] as many
as possible."

-Saravana

[1] - https://lore.kernel.org/lkml/CAGETcx-hCrUvY5whZBihueqqCxmF3oDjFybjmoo3JUu87iiiEw@mail.gmail.com/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGETcx-FjF%2BbktBgL6h0ORH3MU4vMM9JNC2oB8Myn8KqvnmhDg%40mail.gmail.com.
