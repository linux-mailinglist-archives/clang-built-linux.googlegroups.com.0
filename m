Return-Path: <clang-built-linux+bncBDY3NC743AGBBZXT5TVAKGQEKFP2K4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B89795231
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 02:08:08 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id e13sf3512678pff.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 17:08:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566259686; cv=pass;
        d=google.com; s=arc-20160816;
        b=w7IFbm25dzVhs8f0/t3/Jq2vUnt+i8blXiUNbEzRYx9NmhCve1WxIgjfPojUZ4u77o
         BwcE6SS4YgAcfrI1sCIHKBWb47cHn6NT8TTJjG18tQ9ZgzaGbpNK/ODSQyRTsMCAeEqs
         nuaVVPX2ww+u1P+cJ+7Icnok8kj3zZNG/Ur4clJEFH335oC3fwSGnsRe5I10Rjc2KTVN
         Zf6gzAJHDLu1CdN5QjOT3Hcov/JYcNXX0bH75PLz8+qrHo74aZMkfHRVIDGS9+MgrzqY
         iHiVN+HfPsljb1/h4vXmmNMv1UfxJMnoo94GQO4zu0uuQ7eGiJY87SrQOwIJUw97ADD6
         755g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=oDHGXIBMPJZFPzRzMcyRx5Rl8b2MGLJUqPzM2HtS2gA=;
        b=rt4/5scDCP7xm17pUdJtapbKlGsPstKd5vp/bdm3shMwNRZzN407Js6v1iO8MqC4nJ
         bawuHe3s0iPRleBz8fP4dH7IKk9ICe6REfIvgtyGMVekX1DFnnL4wqZHnlxaR7e64Yhr
         /XctVpYCAfoUcGD0r+azN/9NfZU6mRf6K/bO4Ia+mMkqhmrBl6yMiCJqtBBYEEmDHUFA
         6MmNg1+7+bgp2Btriyxb0NPWLCkIJmpfESy09PjBO8gIczYMtHFIELVGgcYn6debCDLi
         2pks3s7gpg2ORdbQctDVhBbtZLyssWLZfdjIlLDzxPGywq1okcXnfdJXbfVo0OWPXJ+K
         qUyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.108 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oDHGXIBMPJZFPzRzMcyRx5Rl8b2MGLJUqPzM2HtS2gA=;
        b=kghbRfVdMVQnonuDjWG1hsz6kSMuTJsu0m7SyHM6ads4rzFW1MavjmVQbGv8RZcA0a
         0SUnapysaRepphHVp2goyp3CUqIHoOA9FLQL/4mrWjxC9jamRpM37HqYtlQHo50Ieus/
         ogYEMyO/b4iSS6J3LLnmQvx8JKmyh32v4nRiMJ3ji/RUebpCFffy6pwHNclV07gS+7Z+
         GOzfdzv/wXSHZ5jbX4zXswUUtFc4G410ZVs+3aTriXxCpMTu3ncm2X8z49rxdePN3d5j
         cTYA7DO5poxLClptmc74/zfZ6wHqeJ/WdnxMQctG2WN2OAnqSVdpHMJKGr+/1z/GkIzd
         MvWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oDHGXIBMPJZFPzRzMcyRx5Rl8b2MGLJUqPzM2HtS2gA=;
        b=T72XIdFaT9rTVY8mPKFc2NU8wTCkw9SZOWAwPNT3Fv15OqKK44HiOFMLY1yF0ZEFaT
         BKAIQ5MBQlYYWPhG47d9edR2dNZE28KySPilh2Zs1TN6HRIpiyEjjQqKuEFMw2dmm/T5
         CtxNK+YDv/YjZbxwU83HTJfljS2s70oUzg7u3oEhAJogyoCaVIeXnFrpZR0pBTZFDwnu
         LAQv8kBlpKQkArCrrU+dpPf5Gt0lFEF5ECcfI4ah08OVsTalVPvPRPZRr3ZTTiwF5wwf
         H8N+T0OOhIFQvSGHgbJKX7svZBBM9EI1MqEWwCLNHMwcIYdkWL75el6LLMn3N5DLsgDN
         vUng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWlxaQvkZGzH/BXxA607jrW8tH6acEIcGlbIXmNda/4vFfBtIjO
	pYttcyaV0VHEv0vR9Q4Vteg=
X-Google-Smtp-Source: APXvYqzh52o8mjhTYDa03P3DyC+nQ8hNLV8u0729r+TqJY/CcnvpLK/NCZy9/3IEGkz4rWEEAiu29g==
X-Received: by 2002:a17:90a:bd0b:: with SMTP id y11mr22272952pjr.141.1566259686762;
        Mon, 19 Aug 2019 17:08:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7549:: with SMTP id q70ls4350183pfc.16.gmail; Mon, 19
 Aug 2019 17:08:06 -0700 (PDT)
X-Received: by 2002:a63:de07:: with SMTP id f7mr3898579pgg.213.1566259686161;
        Mon, 19 Aug 2019 17:08:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566259686; cv=none;
        d=google.com; s=arc-20160816;
        b=iFuncPBjH/9aBtkIhphvLaHTTD8aBEUi9E3rl152KZxVSx9nqiB4iSK+GumtZPN9LD
         MZRDxRnJmUwM7AcJhrMppM/TEzDQtpnX8Qf3gjaBwC2kaJSHFfhUEuYUSGuEpbAxBN/l
         cYJJXJaHGzCINrnJ5nTFGajJWEGrnk74GVkdXM5mTeSxOoqhTx/DooXlW2QD1V3R+N3Q
         A0kF3+iua63Y4KiaVIR5UMwIysZrui0SOuGrQ40eoUYlqOgxvx3IIv09EO413VXjgZT1
         5gH3YYYHektS5piREShPEb3cxjocgE0BoTLb1Njrm8T3jIGLqdyXgyC2q9NnKU4rMrGF
         f5Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id;
        bh=T43RFXBEgj07pBqo9u53KA7Aq3z1W4IDnE1I/IgZ89M=;
        b=IrnM3lkDVZ4r4ABNoQSndX16zh2mHbvTIyU14L7Qy3JKvqDyVOxQk+srrfRZAws2Ti
         79won/VEPrjYI2tWvgkw/WnMm3rsUmBGOij9gqJ3X6uHBaNgtSNDVeQdSBvWE1+mft4k
         lKAH7hkGM9siImuKT6v9gLPa4lEQFRAXSHe0EuhUQFtRbVinT8ZcJqyy3vLhXqiIhZ2o
         BNOtX20BpfGgRnHtqoUu2WZ0YJbZdVEz10UV4HNTPgwBk9ZmZ3LurDoJlLnBTJQFjhqe
         19xx9HJwlZwc/BcXLnYnmxWcoF5DqPZCPLQ/JjDtA0/nW8A18RSHFLmb3E9DXvY3GGIm
         Ti9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.108 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0108.hostedemail.com. [216.40.44.108])
        by gmr-mx.google.com with ESMTPS id j6si529982pjt.0.2019.08.19.17.08.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Aug 2019 17:08:06 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.108 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.108;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 8B283182CF669;
	Tue, 20 Aug 2019 00:08:04 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:599:800:871:960:967:973:982:988:989:1000:1042:1260:1313:1314:1345:1437:1516:1518:1544:1575:1594:1605:1711:1730:1747:1764:1777:1792:2198:2199:2393:2525:2553:2559:2567:2570:2682:2685:2691:2703:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3622:3653:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4605:5007:6119:6506:7281:7903:7909:7974:9025:10004:10394:11658:12740:13142:13161:13229:13230:30056,0,RBL:error,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:35,LUA_SUMMARY:none
X-HE-Tag: baby56_632a445857f50
X-Filterd-Recvd-Size: 103291
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Tue, 20 Aug 2019 00:08:01 +0000 (UTC)
Message-ID: <14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
Subject: Re: rfc: treewide scripted patch mechanism? (was: Re: [PATCH]
 Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough
 for clang)QUILT
From: Joe Perches <joe@perches.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Julia Lawall
 <julia.lawall@lip6.fr>, "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 LKML <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Date: Mon, 19 Aug 2019 17:08:00 -0700
In-Reply-To: <20190820092451.791c85e5@canb.auug.org.au>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	 <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
	 <ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
	 <20190820092451.791c85e5@canb.auug.org.au>
Content-Type: multipart/mixed; boundary="=-UN73uR7ID00gITZ0Aqnl"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.108 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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


--=-UN73uR7ID00gITZ0Aqnl
Content-Type: text/plain; charset="UTF-8"

On Tue, 2019-08-20 at 09:24 +1000, Stephen Rothwell wrote:
> Hi Joe,

Hi Stephen

> Sorry for the slow response.

No worries. thanks for picking up the thread.

> On Fri, 16 Aug 2019 12:58:27 -0700 Joe Perches <joe@perches.com> wrote:
> > On Sat, 2019-08-10 at 13:33 -0700, Joe Perches wrote:
> > > On Sat, 2019-08-10 at 13:18 -0700, Joe Perches wrote:  
> > []
> > > > There are classes of patches generated by scripts that have
> > > > no real mechanism to be applied today.
> > > > 
> > > > For instance: global coccinelle scripted changes to use stracpy
> > > > https://lore.kernel.org/lkml/alpine.DEB.2.21.1907251747560.2494@hadrien/
> > > > 
> > > > and trivial scripted changes to MAINTAINERS
> > > > https://lore.kernel.org/lkml/6482e6546dc328ec47b07dba9a78a9573ebb3e56.camel@perches.com/
> > > > 
> > > > that are basically impossible to be applied by anyone but you.
> > > > 
> > > > Otherwise there are hundreds of little micro patches most of
> > > > which would not otherwise be applied.
> > > > 
> > > > There should be some process available to get these treewide
> > > > or difficult to keep up-to-date and apply patches handled.
> > > > 
> > > > I believe these sorts of scripted patches should ideally
> > > > be handled immediately before an RC1 so other trees can be 
> > > > synchronized in the simplest way possible.  
> > > 
> > > Hey Stephen
> > > 
> > > Question for you about a possible -next process change.
> > > 
> > > Would it be reasonable to have some mechanism to script
> > > treewide patches to generate and apply after Andrew Morton's
> > > mmotm patches are applied to -next?
> 
> I don't see why not (its all just software, right? :-)).  I would have
> to refresh my understanding of how Andrew constructs his mmot{s,m} quilt
> series, but I should be able to sort that out.  The only other issue is
> the time it takes to apply these changes and test them.  The total time
> it takes to construct linux-next each day increases towards the opening
> of the merge window (we are currently at -rc5 and I am already taking
> about 12 hours each day).
> 
> > > This could allow treewide scripted patches to have
> > > compilation and test coverage before possibly being
> > > applied to Linus' tree.
> 
> Always a good thing :-)
> 
> So, do we have a pending example, or can you give my some idea of what
> they would look like?

A few examples:

1: a patch just to MAINTAINERS done via bash script:

https://lore.kernel.org/lkml/904551f1f198ffac9a0f9c3c99aa966b0a7c76c1.camel@perches.com/

$ git grep -h "^[FX]:" MAINTAINERS | \
  cut -f2- | grep -vP '/$|\*|\?|\[' | \
  while read file ; do \
    if [ -d $file ]; then \
      sed -i -e "s@${file}\$@${file}/@" MAINTAINERS ; \
    fi ; \
  done

This one is trivial and takes almost no time.

2: would be Julia Lawall's stracpy change done
with coccinelle: (attached)

This one takes quite a bit longer as it has to do a
cocci --all-includes scan of each source file and each
of its #include files.

The 1st MAINTAINERS change is an annoyance because it
either is individual patches for each of 50 subsystems
or a single patch that changes constantly.  Either
tends to get elements dropped on the floor.

The 2nd is treewide and quite a large patch which
spans nearly every subsystem.  These types of patches
generally are not always acceptable to one party or
another but do allow whatever exceptional uses of
strlcpy or strncpy that remain to be analyzed for
defects.

3: might be the /* fallthrough */ to fallthrough;
script attached to this email:

https://lore.kernel.org/lkml/61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel@perches.com/

$ git ls-files -- '*.[ch]' | \
  xargs perl cvt_style.pl -o --convert=fallthrough

but this depends on the acceptance of another currently
rfc patch:

https://lore.kernel.org/lkml/1d2830aadbe9d8151728a7df5b88528fc72a0095.1564549413.git.joe@perches.com/

This script takes around 15 minutes on my 3 year old
laptop with an ssd.

cheers, Joe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/14723fccc2c3362cc045df17fc8554f37c8a8529.camel%40perches.com.

--=-UN73uR7ID00gITZ0Aqnl
Content-Disposition: attachment; filename="stracpy.cocci"
Content-Type: text/x-csrc; name="stracpy.cocci"; charset="us-ascii"
Content-Transfer-Encoding: 7bit

// spatch.opt -j 44 ~/linux-next stracpy.cocci --recursive-includes --very-quiet > stracpy.out

@r@
identifier f,i1,i2;
struct i1 e1;
expression e2;
position p;
@@
\(strscpy\|strlcpy\)(e1.f, e2, i2)@p

@ok@
identifier r.i1,r.i2,r.f;
type T;
@@
struct i1 { ... T f[i2]; ... }

@depends on ok@
identifier f,i2,i1;
struct i1 e1;
expression e2;
local idexpression x;
position r.p;
assignment operator aop;
@@
(
-x aop strlcpy
+stracpy
  (e1.f, e2
-    , i2
  )@p;
  ... when != x

|
-strlcpy
+stracpy
  (e1.f, e2
-    , i2
  )@p;
|
-strscpy
+stracpy
  (e1.f, e2
-    , i2
  )@p
... when any
)

--=-UN73uR7ID00gITZ0Aqnl
Content-Disposition: attachment; filename="stracpy.out"
Content-Type: text/x-patch; name="stracpy.out"; charset="us-ascii"
Content-Transfer-Encoding: 7bit

diff -u -p a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
--- a/drivers/gpu/drm/drm_client.c
+++ b/drivers/gpu/drm/drm_client.c
@@ -347,7 +347,7 @@ static int drm_client_buffer_addfb(struc
 	/* drop the reference we picked up in framebuffer lookup */
 	drm_framebuffer_put(buffer->fb);
 
-	strscpy(buffer->fb->comm, client->name, TASK_COMM_LEN);
+	stracpy(buffer->fb->comm, client->name);
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/max6639.c b/drivers/hwmon/max6639.c
--- a/drivers/hwmon/max6639.c
+++ b/drivers/hwmon/max6639.c
@@ -511,7 +511,7 @@ static int max6639_detect(struct i2c_cli
 	if (dev_id != 0x58 || manu_id != 0x4D)
 		return -ENODEV;
 
-	strlcpy(info->type, "max6639", I2C_NAME_SIZE);
+	stracpy(info->type, "max6639");
 
 	return 0;
 }
diff -u -p a/drivers/media/dvb-frontends/cxd2820r_core.c b/drivers/media/dvb-frontends/cxd2820r_core.c
--- a/drivers/media/dvb-frontends/cxd2820r_core.c
+++ b/drivers/media/dvb-frontends/cxd2820r_core.c
@@ -527,7 +527,7 @@ struct dvb_frontend *cxd2820r_attach(con
 	pdata.attach_in_use = true;
 
 	memset(&board_info, 0, sizeof(board_info));
-	strscpy(board_info.type, "cxd2820r", I2C_NAME_SIZE);
+	stracpy(board_info.type, "cxd2820r");
 	board_info.addr = config->i2c_address;
 	board_info.platform_data = &pdata;
 	client = i2c_new_device(adapter, &board_info);
diff -u -p a/drivers/s390/cio/qdio_debug.c b/drivers/s390/cio/qdio_debug.c
--- a/drivers/s390/cio/qdio_debug.c
+++ b/drivers/s390/cio/qdio_debug.c
@@ -101,7 +101,7 @@ int qdio_allocate_dbf(struct qdio_initia
 			debug_unregister(irq_ptr->debug_area);
 			return -ENOMEM;
 		}
-		strlcpy(new_entry->dbf_name, text, QDIO_DBF_NAME_LEN);
+		stracpy(new_entry->dbf_name, text);
 		new_entry->dbf_info = irq_ptr->debug_area;
 		mutex_lock(&qdio_dbf_list_mutex);
 		list_add(&new_entry->dbf_list, &qdio_dbf_list);
diff -u -p a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -937,8 +937,8 @@ static int do_devinfo_ioctl(struct comed
 	/* fill devinfo structure */
 	devinfo.version_code = COMEDI_VERSION_CODE;
 	devinfo.n_subdevs = dev->n_subdevices;
-	strlcpy(devinfo.driver_name, dev->driver->driver_name, COMEDI_NAMELEN);
-	strlcpy(devinfo.board_name, dev->board_name, COMEDI_NAMELEN);
+	stracpy(devinfo.driver_name, dev->driver->driver_name);
+	stracpy(devinfo.board_name, dev->board_name);
 
 	s = comedi_file_read_subdevice(file);
 	if (s)
diff -u -p a/crypto/api.c b/crypto/api.c
--- a/crypto/api.c
+++ b/crypto/api.c
@@ -115,7 +115,7 @@ struct crypto_larval *crypto_larval_allo
 	larval->alg.cra_priority = -1;
 	larval->alg.cra_destroy = crypto_larval_destroy;
 
-	strlcpy(larval->alg.cra_name, name, CRYPTO_MAX_ALG_NAME);
+	stracpy(larval->alg.cra_name, name);
 	init_completion(&larval->completion);
 
 	return larval;
diff -u -p a/drivers/hwmon/adm1026.c b/drivers/hwmon/adm1026.c
--- a/drivers/hwmon/adm1026.c
+++ b/drivers/hwmon/adm1026.c
@@ -1610,7 +1610,7 @@ static int adm1026_detect(struct i2c_cli
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, "adm1026", I2C_NAME_SIZE);
+	stracpy(info->type, "adm1026");
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/tmp421.c b/drivers/hwmon/tmp421.c
--- a/drivers/hwmon/tmp421.c
+++ b/drivers/hwmon/tmp421.c
@@ -266,7 +266,7 @@ static int tmp421_detect(struct i2c_clie
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, tmp421_id[kind].name, I2C_NAME_SIZE);
+	stracpy(info->type, tmp421_id[kind].name);
 	dev_info(&adapter->dev, "Detected TI %s chip at 0x%02x\n",
 		 names[kind], client->addr);
 
diff -u -p a/net/bridge/br_sysfs_if.c b/net/bridge/br_sysfs_if.c
--- a/net/bridge/br_sysfs_if.c
+++ b/net/bridge/br_sysfs_if.c
@@ -374,7 +374,7 @@ int br_sysfs_addif(struct net_bridge_por
 			return err;
 	}
 
-	strlcpy(p->sysfs_name, p->dev->name, IFNAMSIZ);
+	stracpy(p->sysfs_name, p->dev->name);
 	return sysfs_create_link(br->ifobj, &p->kobj, p->sysfs_name);
 }
 
@@ -396,7 +396,7 @@ int br_sysfs_renameif(struct net_bridge_
 		netdev_notice(br->dev, "unable to rename link %s to %s",
 			      p->sysfs_name, p->dev->name);
 	else
-		strlcpy(p->sysfs_name, p->dev->name, IFNAMSIZ);
+		stracpy(p->sysfs_name, p->dev->name);
 
 	return err;
 }
diff -u -p a/drivers/hwmon/jc42.c b/drivers/hwmon/jc42.c
--- a/drivers/hwmon/jc42.c
+++ b/drivers/hwmon/jc42.c
@@ -431,7 +431,7 @@ static int jc42_detect(struct i2c_client
 		struct jc42_chips *chip = &jc42_chips[i];
 		if (manid == chip->manid &&
 		    (devid & chip->devid_mask) == chip->devid) {
-			strlcpy(info->type, "jc42", I2C_NAME_SIZE);
+			stracpy(info->type, "jc42");
 			return 0;
 		}
 	}
diff -u -p a/drivers/hwmon/lm73.c b/drivers/hwmon/lm73.c
--- a/drivers/hwmon/lm73.c
+++ b/drivers/hwmon/lm73.c
@@ -257,7 +257,7 @@ static int lm73_detect(struct i2c_client
 	if (id < 0 || id != LM73_ID)
 		return -ENODEV;
 
-	strlcpy(info->type, "lm73", I2C_NAME_SIZE);
+	stracpy(info->type, "lm73");
 
 	return 0;
 }
diff -u -p a/drivers/media/usb/dvb-usb-v2/af9035.c b/drivers/media/usb/dvb-usb-v2/af9035.c
--- a/drivers/media/usb/dvb-usb-v2/af9035.c
+++ b/drivers/media/usb/dvb-usb-v2/af9035.c
@@ -189,7 +189,7 @@ static int af9035_add_i2c_dev(struct dvb
 		.platform_data = platform_data,
 	};
 
-	strscpy(board_info.type, type, I2C_NAME_SIZE);
+	stracpy(board_info.type, type);
 
 	/* find first free client */
 	for (num = 0; num < AF9035_I2C_CLIENT_MAX; num++) {
diff -u -p a/drivers/hwmon/adt7462.c b/drivers/hwmon/adt7462.c
--- a/drivers/hwmon/adt7462.c
+++ b/drivers/hwmon/adt7462.c
@@ -1782,7 +1782,7 @@ static int adt7462_detect(struct i2c_cli
 	if (revision != ADT7462_REVISION)
 		return -ENODEV;
 
-	strlcpy(info->type, "adt7462", I2C_NAME_SIZE);
+	stracpy(info->type, "adt7462");
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/smsc47m192.c b/drivers/hwmon/smsc47m192.c
--- a/drivers/hwmon/smsc47m192.c
+++ b/drivers/hwmon/smsc47m192.c
@@ -582,7 +582,7 @@ static int smsc47m192_detect(struct i2c_
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, "smsc47m192", I2C_NAME_SIZE);
+	stracpy(info->type, "smsc47m192");
 
 	return 0;
 }
diff -u -p a/drivers/leds/leds-blinkm.c b/drivers/leds/leds-blinkm.c
--- a/drivers/leds/leds-blinkm.c
+++ b/drivers/leds/leds-blinkm.c
@@ -562,7 +562,7 @@ static int blinkm_detect(struct i2c_clie
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, "blinkm", I2C_NAME_SIZE);
+	stracpy(info->type, "blinkm");
 	return 0;
 }
 
diff -u -p a/drivers/media/pci/cx23885/cx23885-dvb.c b/drivers/media/pci/cx23885/cx23885-dvb.c
--- a/drivers/media/pci/cx23885/cx23885-dvb.c
+++ b/drivers/media/pci/cx23885/cx23885-dvb.c
@@ -1155,7 +1155,7 @@ static int dvb_register_ci_mac(struct cx
 		sp2_config.priv = port;
 		sp2_config.ci_control = cx23885_sp2_ci_ctrl;
 		memset(&info, 0, sizeof(struct i2c_board_info));
-		strscpy(info.type, "sp2", I2C_NAME_SIZE);
+		stracpy(info.type, "sp2");
 		info.addr = 0x40;
 		info.platform_data = &sp2_config;
 		request_module(info.type);
@@ -1822,7 +1822,7 @@ static int dvb_register(struct cx23885_t
 		case 1:
 			/* attach demod + tuner combo */
 			memset(&info, 0, sizeof(info));
-			strscpy(info.type, "tda10071_cx24118", I2C_NAME_SIZE);
+			stracpy(info.type, "tda10071_cx24118");
 			info.addr = 0x05;
 			info.platform_data = &tda10071_pdata;
 			request_module("tda10071");
@@ -1839,7 +1839,7 @@ static int dvb_register(struct cx23885_t
 			/* attach SEC */
 			a8293_pdata.dvb_frontend = fe0->dvb.frontend;
 			memset(&info, 0, sizeof(info));
-			strscpy(info.type, "a8293", I2C_NAME_SIZE);
+			stracpy(info.type, "a8293");
 			info.addr = 0x0b;
 			info.platform_data = &a8293_pdata;
 			request_module("a8293");
@@ -1860,7 +1860,7 @@ static int dvb_register(struct cx23885_t
 			si2165_pdata.chip_mode = SI2165_MODE_PLL_XTAL;
 			si2165_pdata.ref_freq_hz = 16000000;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2165", I2C_NAME_SIZE);
+			stracpy(info.type, "si2165");
 			info.addr = 0x64;
 			info.platform_data = &si2165_pdata;
 			request_module(info.type);
@@ -1894,7 +1894,7 @@ static int dvb_register(struct cx23885_t
 
 		/* attach demod + tuner combo */
 		memset(&info, 0, sizeof(info));
-		strscpy(info.type, "tda10071_cx24118", I2C_NAME_SIZE);
+		stracpy(info.type, "tda10071_cx24118");
 		info.addr = 0x05;
 		info.platform_data = &tda10071_pdata;
 		request_module("tda10071");
@@ -1911,7 +1911,7 @@ static int dvb_register(struct cx23885_t
 		/* attach SEC */
 		a8293_pdata.dvb_frontend = fe0->dvb.frontend;
 		memset(&info, 0, sizeof(info));
-		strscpy(info.type, "a8293", I2C_NAME_SIZE);
+		stracpy(info.type, "a8293");
 		info.addr = 0x0b;
 		info.platform_data = &a8293_pdata;
 		request_module("a8293");
@@ -1944,7 +1944,7 @@ static int dvb_register(struct cx23885_t
 			ts2020_config.fe = fe0->dvb.frontend;
 			ts2020_config.get_agc_pwm = m88ds3103_get_agc_pwm;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "ts2020", I2C_NAME_SIZE);
+			stracpy(info.type, "ts2020");
 			info.addr = 0x60;
 			info.platform_data = &ts2020_config;
 			request_module(info.type);
@@ -1981,7 +1981,7 @@ static int dvb_register(struct cx23885_t
 			si2168_config.fe = &fe0->dvb.frontend;
 			si2168_config.ts_mode = SI2168_TS_SERIAL;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2168", I2C_NAME_SIZE);
+			stracpy(info.type, "si2168");
 			info.addr = 0x64;
 			info.platform_data = &si2168_config;
 			request_module(info.type);
@@ -2000,7 +2000,7 @@ static int dvb_register(struct cx23885_t
 			si2157_config.fe = fe0->dvb.frontend;
 			si2157_config.if_port = 1;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2157", I2C_NAME_SIZE);
+			stracpy(info.type, "si2157");
 			info.addr = 0x60;
 			info.platform_data = &si2157_config;
 			request_module(info.type);
@@ -2028,7 +2028,7 @@ static int dvb_register(struct cx23885_t
 		si2168_config.fe = &fe0->dvb.frontend;
 		si2168_config.ts_mode = SI2168_TS_PARALLEL;
 		memset(&info, 0, sizeof(struct i2c_board_info));
-		strscpy(info.type, "si2168", I2C_NAME_SIZE);
+		stracpy(info.type, "si2168");
 		info.addr = 0x64;
 		info.platform_data = &si2168_config;
 		request_module(info.type);
@@ -2046,7 +2046,7 @@ static int dvb_register(struct cx23885_t
 		si2157_config.fe = fe0->dvb.frontend;
 		si2157_config.if_port = 1;
 		memset(&info, 0, sizeof(struct i2c_board_info));
-		strscpy(info.type, "si2157", I2C_NAME_SIZE);
+		stracpy(info.type, "si2157");
 		info.addr = 0x60;
 		info.platform_data = &si2157_config;
 		request_module(info.type);
@@ -2076,7 +2076,7 @@ static int dvb_register(struct cx23885_t
 		ts2020_config.fe = fe0->dvb.frontend;
 		ts2020_config.get_agc_pwm = m88ds3103_get_agc_pwm;
 		memset(&info, 0, sizeof(struct i2c_board_info));
-		strscpy(info.type, "ts2020", I2C_NAME_SIZE);
+		stracpy(info.type, "ts2020");
 		info.addr = 0x60;
 		info.platform_data = &ts2020_config;
 		request_module(info.type);
@@ -2125,7 +2125,7 @@ static int dvb_register(struct cx23885_t
 		}
 
 		memset(&info, 0, sizeof(info));
-		strscpy(info.type, "m88ds3103", I2C_NAME_SIZE);
+		stracpy(info.type, "m88ds3103");
 		info.addr = 0x68;
 		info.platform_data = &m88ds3103_pdata;
 		request_module(info.type);
@@ -2145,7 +2145,7 @@ static int dvb_register(struct cx23885_t
 		ts2020_config.fe = fe0->dvb.frontend;
 		ts2020_config.get_agc_pwm = m88ds3103_get_agc_pwm;
 		memset(&info, 0, sizeof(struct i2c_board_info));
-		strscpy(info.type, "ts2020", I2C_NAME_SIZE);
+		stracpy(info.type, "ts2020");
 		info.addr = 0x60;
 		info.platform_data = &ts2020_config;
 		request_module(info.type);
@@ -2190,7 +2190,7 @@ static int dvb_register(struct cx23885_t
 		si2168_config.i2c_adapter = &adapter;
 		si2168_config.fe = &fe0->dvb.frontend;
 		memset(&info, 0, sizeof(struct i2c_board_info));
-		strscpy(info.type, "si2168", I2C_NAME_SIZE);
+		stracpy(info.type, "si2168");
 		info.addr = 0x64;
 		info.platform_data = &si2168_config;
 		request_module(info.type);
@@ -2208,7 +2208,7 @@ static int dvb_register(struct cx23885_t
 		si2157_config.fe = fe0->dvb.frontend;
 		si2157_config.if_port = 1;
 		memset(&info, 0, sizeof(struct i2c_board_info));
-		strscpy(info.type, "si2157", I2C_NAME_SIZE);
+		stracpy(info.type, "si2157");
 		info.addr = 0x60;
 		info.platform_data = &si2157_config;
 		request_module(info.type);
@@ -2241,7 +2241,7 @@ static int dvb_register(struct cx23885_t
 			/* attach SEC */
 			a8293_pdata.dvb_frontend = fe0->dvb.frontend;
 			memset(&info, 0, sizeof(info));
-			strscpy(info.type, "a8293", I2C_NAME_SIZE);
+			stracpy(info.type, "a8293");
 			info.addr = 0x0b;
 			info.platform_data = &a8293_pdata;
 			request_module("a8293");
@@ -2258,7 +2258,7 @@ static int dvb_register(struct cx23885_t
 			memset(&m88rs6000t_config, 0, sizeof(m88rs6000t_config));
 			m88rs6000t_config.fe = fe0->dvb.frontend;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "m88rs6000t", I2C_NAME_SIZE);
+			stracpy(info.type, "m88rs6000t");
 			info.addr = 0x21;
 			info.platform_data = &m88rs6000t_config;
 			request_module("%s", info.type);
@@ -2283,7 +2283,7 @@ static int dvb_register(struct cx23885_t
 			si2168_config.fe = &fe0->dvb.frontend;
 			si2168_config.ts_mode = SI2168_TS_SERIAL;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2168", I2C_NAME_SIZE);
+			stracpy(info.type, "si2168");
 			info.addr = 0x64;
 			info.platform_data = &si2168_config;
 			request_module("%s", info.type);
@@ -2301,7 +2301,7 @@ static int dvb_register(struct cx23885_t
 			si2157_config.fe = fe0->dvb.frontend;
 			si2157_config.if_port = 1;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2157", I2C_NAME_SIZE);
+			stracpy(info.type, "si2157");
 			info.addr = 0x60;
 			info.platform_data = &si2157_config;
 			request_module("%s", info.type);
@@ -2336,7 +2336,7 @@ static int dvb_register(struct cx23885_t
 			si2168_config.fe = &fe0->dvb.frontend;
 			si2168_config.ts_mode = SI2168_TS_SERIAL;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2168", I2C_NAME_SIZE);
+			stracpy(info.type, "si2168");
 			info.addr = 0x64;
 			info.platform_data = &si2168_config;
 			request_module("%s", info.type);
@@ -2354,7 +2354,7 @@ static int dvb_register(struct cx23885_t
 			si2157_config.fe = fe0->dvb.frontend;
 			si2157_config.if_port = 1;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2157", I2C_NAME_SIZE);
+			stracpy(info.type, "si2157");
 			info.addr = 0x60;
 			info.platform_data = &si2157_config;
 			request_module("%s", info.type);
@@ -2383,7 +2383,7 @@ static int dvb_register(struct cx23885_t
 			si2168_config.fe = &fe0->dvb.frontend;
 			si2168_config.ts_mode = SI2168_TS_SERIAL;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2168", I2C_NAME_SIZE);
+			stracpy(info.type, "si2168");
 			info.addr = 0x66;
 			info.platform_data = &si2168_config;
 			request_module("%s", info.type);
@@ -2401,7 +2401,7 @@ static int dvb_register(struct cx23885_t
 			si2157_config.fe = fe0->dvb.frontend;
 			si2157_config.if_port = 1;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2157", I2C_NAME_SIZE);
+			stracpy(info.type, "si2157");
 			info.addr = 0x62;
 			info.platform_data = &si2157_config;
 			request_module("%s", info.type);
@@ -2443,7 +2443,7 @@ static int dvb_register(struct cx23885_t
 			si2157_config.if_port = 1;
 			si2157_config.inversion = 1;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2157", I2C_NAME_SIZE);
+			stracpy(info.type, "si2157");
 			info.addr = 0x60;
 			info.platform_data = &si2157_config;
 			request_module("%s", info.type);
@@ -2479,7 +2479,7 @@ static int dvb_register(struct cx23885_t
 			si2157_config.if_port = 1;
 			si2157_config.inversion = 1;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2157", I2C_NAME_SIZE);
+			stracpy(info.type, "si2157");
 			info.addr = 0x62;
 			info.platform_data = &si2157_config;
 			request_module("%s", info.type);
@@ -2519,7 +2519,7 @@ static int dvb_register(struct cx23885_t
 			si2157_config.if_port = 1;
 			si2157_config.inversion = 1;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2157", I2C_NAME_SIZE);
+			stracpy(info.type, "si2157");
 			info.addr = 0x60;
 			info.platform_data = &si2157_config;
 			request_module("%s", info.type);
diff -u -p a/net/ipv4/ip_tunnel.c b/net/ipv4/ip_tunnel.c
--- a/net/ipv4/ip_tunnel.c
+++ b/net/ipv4/ip_tunnel.c
@@ -1054,7 +1054,7 @@ int ip_tunnel_init_net(struct net *net,
 
 	memset(&parms, 0, sizeof(parms));
 	if (devname)
-		strlcpy(parms.name, devname, IFNAMSIZ);
+		stracpy(parms.name, devname);
 
 	rtnl_lock();
 	itn->fb_tunnel_dev = __ip_tunnel_create(net, ops, &parms);
diff -u -p a/drivers/hwmon/emc1403.c b/drivers/hwmon/emc1403.c
--- a/drivers/hwmon/emc1403.c
+++ b/drivers/hwmon/emc1403.c
@@ -329,22 +329,22 @@ static int emc1403_detect(struct i2c_cli
 	id = i2c_smbus_read_byte_data(client, THERMAL_PID_REG);
 	switch (id) {
 	case 0x20:
-		strlcpy(info->type, "emc1402", I2C_NAME_SIZE);
+		stracpy(info->type, "emc1402");
 		break;
 	case 0x21:
-		strlcpy(info->type, "emc1403", I2C_NAME_SIZE);
+		stracpy(info->type, "emc1403");
 		break;
 	case 0x22:
-		strlcpy(info->type, "emc1422", I2C_NAME_SIZE);
+		stracpy(info->type, "emc1422");
 		break;
 	case 0x23:
-		strlcpy(info->type, "emc1423", I2C_NAME_SIZE);
+		stracpy(info->type, "emc1423");
 		break;
 	case 0x25:
-		strlcpy(info->type, "emc1404", I2C_NAME_SIZE);
+		stracpy(info->type, "emc1404");
 		break;
 	case 0x27:
-		strlcpy(info->type, "emc1424", I2C_NAME_SIZE);
+		stracpy(info->type, "emc1424");
 		break;
 	default:
 		return -ENODEV;
diff -u -p a/drivers/hwmon/w83l786ng.c b/drivers/hwmon/w83l786ng.c
--- a/drivers/hwmon/w83l786ng.c
+++ b/drivers/hwmon/w83l786ng.c
@@ -687,7 +687,7 @@ w83l786ng_detect(struct i2c_client *clie
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, "w83l786ng", I2C_NAME_SIZE);
+	stracpy(info->type, "w83l786ng");
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/lm77.c b/drivers/hwmon/lm77.c
--- a/drivers/hwmon/lm77.c
+++ b/drivers/hwmon/lm77.c
@@ -302,7 +302,7 @@ static int lm77_detect(struct i2c_client
 	 || i2c_smbus_read_word_data(client, 7) != min)
 		return -ENODEV;
 
-	strlcpy(info->type, "lm77", I2C_NAME_SIZE);
+	stracpy(info->type, "lm77");
 
 	return 0;
 }
diff -u -p a/include/rdma/rdma_vt.h b/include/rdma/rdma_vt.h
--- a/include/rdma/rdma_vt.h
+++ b/include/rdma/rdma_vt.h
@@ -486,7 +486,7 @@ static inline void rvt_set_ibdev_name(st
 	 * to work by setting the name manually here.
 	 */
 	dev_set_name(&rdi->ibdev.dev, fmt, name, unit);
-	strlcpy(rdi->ibdev.name, dev_name(&rdi->ibdev.dev), IB_DEVICE_NAME_MAX);
+	stracpy(rdi->ibdev.name, dev_name(&rdi->ibdev.dev));
 }
 
 /**
diff -u -p a/kernel/workqueue.c b/kernel/workqueue.c
--- a/kernel/workqueue.c
+++ b/kernel/workqueue.c
@@ -2208,7 +2208,7 @@ __acquires(&pool->lock)
 	 * Record wq name for cmdline and debug reporting, may get
 	 * overridden through set_worker_desc().
 	 */
-	strscpy(worker->desc, pwq->wq->name, WORKER_DESC_LEN);
+	stracpy(worker->desc, pwq->wq->name);
 
 	list_del_init(&work->entry);
 
diff -u -p a/drivers/hwmon/ftsteutates.c b/drivers/hwmon/ftsteutates.c
--- a/drivers/hwmon/ftsteutates.c
+++ b/drivers/hwmon/ftsteutates.c
@@ -739,7 +739,7 @@ static int fts_detect(struct i2c_client
 	if (val != 0x11)
 		return -ENODEV;
 
-	strlcpy(info->type, fts_id[0].name, I2C_NAME_SIZE);
+	stracpy(info->type, fts_id[0].name);
 	info->flags = 0;
 	return 0;
 }
diff -u -p a/drivers/media/i2c/tvaudio.c b/drivers/media/i2c/tvaudio.c
--- a/drivers/media/i2c/tvaudio.c
+++ b/drivers/media/i2c/tvaudio.c
@@ -1981,7 +1981,7 @@ static int tvaudio_probe(struct i2c_clie
 
 	/* fill required data structures */
 	if (!id)
-		strscpy(client->name, desc->name, I2C_NAME_SIZE);
+		stracpy(client->name, desc->name);
 	chip->desc = desc;
 	chip->shadow.count = desc->registers+1;
 	chip->prevmode = -1;
diff -u -p a/drivers/media/pci/saa7134/saa7134-input.c b/drivers/media/pci/saa7134/saa7134-input.c
--- a/drivers/media/pci/saa7134/saa7134-input.c
+++ b/drivers/media/pci/saa7134/saa7134-input.c
@@ -856,7 +856,7 @@ void saa7134_probe_i2c_ir(struct saa7134
 
 	memset(&info, 0, sizeof(struct i2c_board_info));
 	memset(&dev->init_data, 0, sizeof(dev->init_data));
-	strscpy(info.type, "ir_video", I2C_NAME_SIZE);
+	stracpy(info.type, "ir_video");
 
 	switch (dev->board) {
 	case SAA7134_BOARD_PINNACLE_PCTV_110i:
diff -u -p a/drivers/media/usb/cx231xx/cx231xx-input.c b/drivers/media/usb/cx231xx/cx231xx-input.c
--- a/drivers/media/usb/cx231xx/cx231xx-input.c
+++ b/drivers/media/usb/cx231xx/cx231xx-input.c
@@ -67,7 +67,7 @@ int cx231xx_ir_init(struct cx231xx *dev)
 
 	dev->init_data.name = cx231xx_boards[dev->model].name;
 
-	strscpy(info.type, "ir_video", I2C_NAME_SIZE);
+	stracpy(info.type, "ir_video");
 	info.platform_data = &dev->init_data;
 
 	/*
diff -u -p a/sound/ppc/keywest.c b/sound/ppc/keywest.c
--- a/sound/ppc/keywest.c
+++ b/sound/ppc/keywest.c
@@ -48,7 +48,7 @@ static int keywest_attach_adapter(struct
 		return -EINVAL; /* ignored */
 
 	memset(&info, 0, sizeof(struct i2c_board_info));
-	strlcpy(info.type, "keywest", I2C_NAME_SIZE);
+	stracpy(info.type, "keywest");
 	info.addr = keywest_ctx->addr;
 	keywest_ctx->client = i2c_new_device(adapter, &info);
 	if (!keywest_ctx->client)
diff -u -p a/drivers/hwmon/lm87.c b/drivers/hwmon/lm87.c
--- a/drivers/hwmon/lm87.c
+++ b/drivers/hwmon/lm87.c
@@ -833,7 +833,7 @@ static int lm87_detect(struct i2c_client
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 
 	return 0;
 }
diff -u -p a/drivers/media/pci/cx88/cx88-input.c b/drivers/media/pci/cx88/cx88-input.c
--- a/drivers/media/pci/cx88/cx88-input.c
+++ b/drivers/media/pci/cx88/cx88-input.c
@@ -600,7 +600,7 @@ void cx88_i2c_init_ir(struct cx88_core *
 		return;
 
 	memset(&info, 0, sizeof(struct i2c_board_info));
-	strscpy(info.type, "ir_video", I2C_NAME_SIZE);
+	stracpy(info.type, "ir_video");
 
 	switch (core->boardnr) {
 	case CX88_BOARD_LEADTEK_PVR2000:
@@ -625,7 +625,7 @@ void cx88_i2c_init_ir(struct cx88_core *
 
 		if (*addrp == 0x71) {
 			/* Hauppauge Z8F0811 */
-			strscpy(info.type, "ir_z8f0811_haup", I2C_NAME_SIZE);
+			stracpy(info.type, "ir_z8f0811_haup");
 			core->init_data.name = core->board.name;
 			core->init_data.ir_codes = RC_MAP_HAUPPAUGE;
 			core->init_data.type = RC_PROTO_BIT_RC5 |
diff -u -p a/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c b/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c
--- a/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c
+++ b/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c
@@ -561,7 +561,7 @@ static void pvr2_i2c_register_ir(struct
 		/* IR Receiver */
 		info.addr          = 0x18;
 		info.platform_data = init_data;
-		strscpy(info.type, "ir_video", I2C_NAME_SIZE);
+		stracpy(info.type, "ir_video");
 		pvr2_trace(PVR2_TRACE_INFO, "Binding %s to i2c address 0x%02x.",
 			   info.type, info.addr);
 		i2c_new_device(&hdw->i2c_adap, &info);
@@ -576,7 +576,7 @@ static void pvr2_i2c_register_ir(struct
 		/* IR Transceiver */
 		info.addr = 0x71;
 		info.platform_data = init_data;
-		strscpy(info.type, "ir_z8f0811_haup", I2C_NAME_SIZE);
+		stracpy(info.type, "ir_z8f0811_haup");
 		pvr2_trace(PVR2_TRACE_INFO, "Binding %s to i2c address 0x%02x.",
 			   info.type, info.addr);
 		i2c_new_device(&hdw->i2c_adap, &info);
diff -u -p a/drivers/s390/block/dasd_devmap.c b/drivers/s390/block/dasd_devmap.c
--- a/drivers/s390/block/dasd_devmap.c
+++ b/drivers/s390/block/dasd_devmap.c
@@ -426,7 +426,7 @@ dasd_add_busid(const char *bus_id, int f
 	if (!devmap) {
 		/* This bus_id is new. */
 		new->devindex = dasd_max_devindex++;
-		strlcpy(new->bus_id, bus_id, DASD_BUS_ID_SIZE);
+		stracpy(new->bus_id, bus_id);
 		new->features = features;
 		new->device = NULL;
 		list_add(&new->list, &dasd_hashlists[hash]);
diff -u -p a/drivers/usb/usbip/stub_main.c b/drivers/usb/usbip/stub_main.c
--- a/drivers/usb/usbip/stub_main.c
+++ b/drivers/usb/usbip/stub_main.c
@@ -101,7 +101,7 @@ static int add_match_busid(char *busid)
 	for (i = 0; i < MAX_BUSID; i++) {
 		spin_lock(&busid_table[i].busid_lock);
 		if (!busid_table[i].name[0]) {
-			strlcpy(busid_table[i].name, busid, BUSID_SIZE);
+			stracpy(busid_table[i].name, busid);
 			if ((busid_table[i].status != STUB_BUSID_ALLOC) &&
 			    (busid_table[i].status != STUB_BUSID_REMOV))
 				busid_table[i].status = STUB_BUSID_ADDED;
diff -u -p a/net/core/dev.c b/net/core/dev.c
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -572,7 +572,7 @@ static int netdev_boot_setup_add(char *n
 	for (i = 0; i < NETDEV_BOOT_SETUP_MAX; i++) {
 		if (s[i].name[0] == '\0' || s[i].name[0] == ' ') {
 			memset(s[i].name, 0, sizeof(s[i].name));
-			strlcpy(s[i].name, name, IFNAMSIZ);
+			stracpy(s[i].name, name);
 			memcpy(&s[i].map, map, sizeof(s[i].map));
 			break;
 		}
@@ -1117,7 +1117,7 @@ static int dev_alloc_name_ns(struct net
 	BUG_ON(!net);
 	ret = __dev_alloc_name(net, name, buf);
 	if (ret >= 0)
-		strlcpy(dev->name, buf, IFNAMSIZ);
+		stracpy(dev->name, buf);
 	return ret;
 }
 
@@ -1154,7 +1154,7 @@ int dev_get_valid_name(struct net *net,
 	else if (__dev_get_by_name(net, name))
 		return -EEXIST;
 	else if (dev->name != name)
-		strlcpy(dev->name, name, IFNAMSIZ);
+		stracpy(dev->name, name);
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/asb100.c b/drivers/hwmon/asb100.c
--- a/drivers/hwmon/asb100.c
+++ b/drivers/hwmon/asb100.c
@@ -770,7 +770,7 @@ static int asb100_detect(struct i2c_clie
 	if (val1 != 0x31 || val2 != 0x06)
 		return -ENODEV;
 
-	strlcpy(info->type, "asb100", I2C_NAME_SIZE);
+	stracpy(info->type, "asb100");
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/w83l785ts.c b/drivers/hwmon/w83l785ts.c
--- a/drivers/hwmon/w83l785ts.c
+++ b/drivers/hwmon/w83l785ts.c
@@ -158,7 +158,7 @@ static int w83l785ts_detect(struct i2c_c
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, "w83l785ts", I2C_NAME_SIZE);
+	stracpy(info->type, "w83l785ts");
 
 	return 0;
 }
diff -u -p a/include/rdma/rdma_vt.h b/include/rdma/rdma_vt.h
--- a/include/rdma/rdma_vt.h
+++ b/include/rdma/rdma_vt.h
@@ -486,7 +486,7 @@ static inline void rvt_set_ibdev_name(st
 	 * to work by setting the name manually here.
 	 */
 	dev_set_name(&rdi->ibdev.dev, fmt, name, unit);
-	strlcpy(rdi->ibdev.name, dev_name(&rdi->ibdev.dev), IB_DEVICE_NAME_MAX);
+	stracpy(rdi->ibdev.name, dev_name(&rdi->ibdev.dev));
 }
 
 /**
diff -u -p a/drivers/scsi/bfa/bfad_bsg.c b/drivers/scsi/bfa/bfad_bsg.c
--- a/drivers/scsi/bfa/bfad_bsg.c
+++ b/drivers/scsi/bfa/bfad_bsg.c
@@ -119,8 +119,8 @@ bfad_iocmd_ioc_get_attr(struct bfad_s *b
 
 	/* fill in driver attr info */
 	strcpy(iocmd->ioc_attr.driver_attr.driver, BFAD_DRIVER_NAME);
-	strlcpy(iocmd->ioc_attr.driver_attr.driver_ver,
-		BFAD_DRIVER_VERSION, BFA_VERSION_LEN);
+	stracpy(iocmd->ioc_attr.driver_attr.driver_ver,
+		BFAD_DRIVER_VERSION);
 	strcpy(iocmd->ioc_attr.driver_attr.fw_ver,
 		iocmd->ioc_attr.adapter_attr.fw_ver);
 	strcpy(iocmd->ioc_attr.driver_attr.bios_ver,
diff -u -p a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
--- a/drivers/staging/olpc_dcon/olpc_dcon.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon.c
@@ -576,7 +576,7 @@ static struct notifier_block dcon_panic_
 
 static int dcon_detect(struct i2c_client *client, struct i2c_board_info *info)
 {
-	strlcpy(info->type, "olpc_dcon", I2C_NAME_SIZE);
+	stracpy(info->type, "olpc_dcon");
 
 	return 0;
 }
diff -u -p a/drivers/acpi/processor_idle.c b/drivers/acpi/processor_idle.c
--- a/drivers/acpi/processor_idle.c
+++ b/drivers/acpi/processor_idle.c
@@ -865,7 +865,7 @@ static int acpi_processor_setup_cstates(
 
 		state = &drv->states[count];
 		snprintf(state->name, CPUIDLE_NAME_LEN, "C%d", i);
-		strlcpy(state->desc, cx->desc, CPUIDLE_DESC_LEN);
+		stracpy(state->desc, cx->desc);
 		state->exit_latency = cx->latency;
 		state->target_residency = cx->latency * latency_factor;
 		state->enter = acpi_idle_enter;
@@ -1036,8 +1036,7 @@ static int acpi_processor_evaluate_lpi(a
 
 		obj = pkg_elem + 9;
 		if (obj->type == ACPI_TYPE_STRING)
-			strlcpy(lpi_state->desc, obj->string.pointer,
-				ACPI_CX_DESC_LEN);
+			stracpy(lpi_state->desc, obj->string.pointer);
 
 		lpi_state->index = state_idx;
 		if (obj_get_integer(pkg_elem + 0, &lpi_state->min_residency)) {
@@ -1102,7 +1101,7 @@ static bool combine_lpi_states(struct ac
 	result->arch_flags = parent->arch_flags;
 	result->index = parent->index;
 
-	strlcpy(result->desc, local->desc, ACPI_CX_DESC_LEN);
+	stracpy(result->desc, local->desc);
 	strlcat(result->desc, "+", ACPI_CX_DESC_LEN);
 	strlcat(result->desc, parent->desc, ACPI_CX_DESC_LEN);
 	return true;
@@ -1271,7 +1270,7 @@ static int acpi_processor_setup_lpi_stat
 
 		state = &drv->states[i];
 		snprintf(state->name, CPUIDLE_NAME_LEN, "LPI-%d", i);
-		strlcpy(state->desc, lpi->desc, CPUIDLE_DESC_LEN);
+		stracpy(state->desc, lpi->desc);
 		state->exit_latency = lpi->wake_latency;
 		state->target_residency = lpi->min_residency;
 		if (lpi->arch_flags)
diff -u -p a/drivers/hwmon/f75375s.c b/drivers/hwmon/f75375s.c
--- a/drivers/hwmon/f75375s.c
+++ b/drivers/hwmon/f75375s.c
@@ -899,7 +899,7 @@ static int f75375_detect(struct i2c_clie
 
 	version = f75375_read8(client, F75375_REG_VERSION);
 	dev_info(&adapter->dev, "found %s version: %02X\n", name, version);
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 
 	return 0;
 }
diff -u -p a/drivers/media/dvb-core/dvbdev.c b/drivers/media/dvb-core/dvbdev.c
--- a/drivers/media/dvb-core/dvbdev.c
+++ b/drivers/media/dvb-core/dvbdev.c
@@ -975,9 +975,9 @@ struct i2c_client *dvb_module_probe(cons
 		return NULL;
 
 	if (name)
-		strscpy(board_info->type, name, I2C_NAME_SIZE);
+		stracpy(board_info->type, name);
 	else
-		strscpy(board_info->type, module_name, I2C_NAME_SIZE);
+		stracpy(board_info->type, module_name);
 
 	board_info->addr = addr;
 	board_info->platform_data = platform_data;
diff -u -p a/drivers/hwmon/max1668.c b/drivers/hwmon/max1668.c
--- a/drivers/hwmon/max1668.c
+++ b/drivers/hwmon/max1668.c
@@ -386,7 +386,7 @@ static int max1668_detect(struct i2c_cli
 	if (!type_name)
 		return -ENODEV;
 
-	strlcpy(info->type, type_name, I2C_NAME_SIZE);
+	stracpy(info->type, type_name);
 
 	return 0;
 }
diff -u -p a/net/sched/sch_teql.c b/net/sched/sch_teql.c
--- a/net/sched/sch_teql.c
+++ b/net/sched/sch_teql.c
@@ -489,7 +489,7 @@ static int __init teql_init(void)
 
 		master = netdev_priv(dev);
 
-		strlcpy(master->qops.id, dev->name, IFNAMSIZ);
+		stracpy(master->qops.id, dev->name);
 		err = register_qdisc(&master->qops);
 
 		if (err) {
diff -u -p a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -146,7 +146,7 @@ static int scmi_sensor_description_get(c
 			/* Sign extend to a full s8 */
 			if (s->scale & SENSOR_SCALE_SIGN)
 				s->scale |= SENSOR_SCALE_EXTEND;
-			strlcpy(s->name, buf->desc[cnt].name, SCMI_MAX_STR_SIZE);
+			stracpy(s->name, buf->desc[cnt].name);
 		}
 
 		desc_index += num_returned;
diff -u -p a/drivers/hwmon/adt7470.c b/drivers/hwmon/adt7470.c
--- a/drivers/hwmon/adt7470.c
+++ b/drivers/hwmon/adt7470.c
@@ -1200,7 +1200,7 @@ static int adt7470_detect(struct i2c_cli
 	if (revision != ADT7470_REVISION)
 		return -ENODEV;
 
-	strlcpy(info->type, "adt7470", I2C_NAME_SIZE);
+	stracpy(info->type, "adt7470");
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/w83795.c b/drivers/hwmon/w83795.c
--- a/drivers/hwmon/w83795.c
+++ b/drivers/hwmon/w83795.c
@@ -1967,7 +1967,7 @@ static int w83795_detect(struct i2c_clie
 	else
 		chip_name = "w83795g";
 
-	strlcpy(info->type, chip_name, I2C_NAME_SIZE);
+	stracpy(info->type, chip_name);
 	dev_info(&adapter->dev, "Found %s rev. %c at 0x%02hx\n", chip_name,
 		 'A' + (device_id & 0xf), address);
 
diff -u -p a/tools/perf/util/auxtrace.c b/tools/perf/util/auxtrace.c
--- a/tools/perf/util/auxtrace.c
+++ b/tools/perf/util/auxtrace.c
@@ -865,7 +865,7 @@ void auxtrace_synth_error(struct auxtrac
 	auxtrace_error->fmt = 1;
 	auxtrace_error->ip = ip;
 	auxtrace_error->time = timestamp;
-	strlcpy(auxtrace_error->msg, msg, MAX_AUXTRACE_ERROR_MSG);
+	stracpy(auxtrace_error->msg, msg);
 
 	size = (void *)auxtrace_error->msg - (void *)auxtrace_error +
 	       strlen(auxtrace_error->msg) + 1;
diff -u -p a/arch/mips/bcm47xx/board.c b/arch/mips/bcm47xx/board.c
--- a/arch/mips/bcm47xx/board.c
+++ b/arch/mips/bcm47xx/board.c
@@ -344,8 +344,7 @@ void __init bcm47xx_board_detect(void)
 
 	board_detected = bcm47xx_board_get_nvram();
 	bcm47xx_board.board = board_detected->board;
-	strlcpy(bcm47xx_board.name, board_detected->name,
-		BCM47XX_BOARD_MAX_NAME);
+	stracpy(bcm47xx_board.name, board_detected->name);
 }
 
 enum bcm47xx_board bcm47xx_board_get(void)
diff -u -p a/drivers/hwmon/adt7411.c b/drivers/hwmon/adt7411.c
--- a/drivers/hwmon/adt7411.c
+++ b/drivers/hwmon/adt7411.c
@@ -590,7 +590,7 @@ static int adt7411_detect(struct i2c_cli
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, "adt7411", I2C_NAME_SIZE);
+	stracpy(info->type, "adt7411");
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/nct7802.c b/drivers/hwmon/nct7802.c
--- a/drivers/hwmon/nct7802.c
+++ b/drivers/hwmon/nct7802.c
@@ -959,7 +959,7 @@ static int nct7802_detect(struct i2c_cli
 	if (reg < 0 || (reg & 0x3f))
 		return -ENODEV;
 
-	strlcpy(info->type, "nct7802", I2C_NAME_SIZE);
+	stracpy(info->type, "nct7802");
 	return 0;
 }
 
diff -u -p a/drivers/media/pci/cx88/cx88-i2c.c b/drivers/media/pci/cx88/cx88-i2c.c
--- a/drivers/media/pci/cx88/cx88-i2c.c
+++ b/drivers/media/pci/cx88/cx88-i2c.c
@@ -137,7 +137,7 @@ int cx88_i2c_init(struct cx88_core *core
 	i2c_set_adapdata(&core->i2c_adap, &core->v4l2_dev);
 	core->i2c_adap.algo_data = &core->i2c_algo;
 	core->i2c_client.adapter = &core->i2c_adap;
-	strscpy(core->i2c_client.name, "cx88xx internal", I2C_NAME_SIZE);
+	stracpy(core->i2c_client.name, "cx88xx internal");
 
 	cx8800_bit_setscl(core, 1);
 	cx8800_bit_setsda(core, 1);
diff -u -p a/lib/earlycpio.c b/lib/earlycpio.c
--- a/lib/earlycpio.c
+++ b/lib/earlycpio.c
@@ -126,7 +126,7 @@ struct cpio_data find_cpio_data(const ch
 				"File %s exceeding MAX_CPIO_FILE_NAME [%d]\n",
 				p, MAX_CPIO_FILE_NAME);
 			}
-			strlcpy(cd.name, p + mypathsize, MAX_CPIO_FILE_NAME);
+			stracpy(cd.name, p + mypathsize);
 
 			cd.data = (void *)dptr;
 			cd.size = ch[C_FILESIZE];
diff -u -p a/drivers/hwmon/max1619.c b/drivers/hwmon/max1619.c
--- a/drivers/hwmon/max1619.c
+++ b/drivers/hwmon/max1619.c
@@ -241,7 +241,7 @@ static int max1619_detect(struct i2c_cli
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, "max1619", I2C_NAME_SIZE);
+	stracpy(info->type, "max1619");
 
 	return 0;
 }
diff -u -p a/drivers/media/usb/dvb-usb-v2/zd1301.c b/drivers/media/usb/dvb-usb-v2/zd1301.c
--- a/drivers/media/usb/dvb-usb-v2/zd1301.c
+++ b/drivers/media/usb/dvb-usb-v2/zd1301.c
@@ -168,7 +168,7 @@ static int zd1301_frontend_attach(struct
 	dev->mt2060_pdata.i2c_write_max = 9;
 	dev->mt2060_pdata.dvb_frontend = frontend;
 	memset(&board_info, 0, sizeof(board_info));
-	strscpy(board_info.type, "mt2060", I2C_NAME_SIZE);
+	stracpy(board_info.type, "mt2060");
 	board_info.addr = 0x60;
 	board_info.platform_data = &dev->mt2060_pdata;
 	request_module("%s", "mt2060");
diff -u -p a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
--- a/drivers/scsi/qla4xxx/ql4_os.c
+++ b/drivers/scsi/qla4xxx/ql4_os.c
@@ -767,8 +767,7 @@ static int qla4xxx_get_chap_list(struct
 			continue;
 
 		chap_rec->chap_tbl_idx = i;
-		strlcpy(chap_rec->username, chap_table->name,
-			ISCSI_CHAP_AUTH_NAME_MAX_LEN);
+		stracpy(chap_rec->username, chap_table->name);
 		strlcpy(chap_rec->password, chap_table->secret,
 			QL4_CHAP_MAX_SECRET_LEN);
 		chap_rec->password_length = chap_table->secret_len;
@@ -6265,8 +6264,8 @@ static void qla4xxx_get_param_ddb(struct
 
 	tddb->tpgt = sess->tpgt;
 	tddb->port = conn->persistent_port;
-	strlcpy(tddb->iscsi_name, sess->targetname, ISCSI_NAME_SIZE);
-	strlcpy(tddb->ip_addr, conn->persistent_address, DDB_IPADDR_LEN);
+	stracpy(tddb->iscsi_name, sess->targetname);
+	stracpy(tddb->ip_addr, conn->persistent_address);
 }
 
 static void qla4xxx_convert_param_ddb(struct dev_db_entry *fw_ddb_entry,
@@ -7769,8 +7768,7 @@ static int qla4xxx_sysfs_ddb_logout(stru
 		goto exit_ddb_logout;
 	}
 
-	strlcpy(flash_tddb->iscsi_name, fnode_sess->targetname,
-		ISCSI_NAME_SIZE);
+	stracpy(flash_tddb->iscsi_name, fnode_sess->targetname);
 
 	if (!strncmp(fnode_sess->portal_type, PORTAL_TYPE_IPV6, 4))
 		sprintf(flash_tddb->ip_addr, "%pI6", fnode_conn->ipaddress);
diff -u -p a/drivers/hwmon/adm9240.c b/drivers/hwmon/adm9240.c
--- a/drivers/hwmon/adm9240.c
+++ b/drivers/hwmon/adm9240.c
@@ -657,7 +657,7 @@ static int adm9240_detect(struct i2c_cli
 		 man_id == 0x23 ? "ADM9240" :
 		 man_id == 0xda ? "DS1780" : "LM81", die_rev);
 
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/w83793.c b/drivers/hwmon/w83793.c
--- a/drivers/hwmon/w83793.c
+++ b/drivers/hwmon/w83793.c
@@ -1651,7 +1651,7 @@ static int w83793_detect(struct i2c_clie
 	if (chip_id != 0x7b)
 		return -ENODEV;
 
-	strlcpy(info->type, "w83793", I2C_NAME_SIZE);
+	stracpy(info->type, "w83793");
 
 	return 0;
 }
diff -u -p a/drivers/media/pci/cx23885/cx23885-i2c.c b/drivers/media/pci/cx23885/cx23885-i2c.c
--- a/drivers/media/pci/cx23885/cx23885-i2c.c
+++ b/drivers/media/pci/cx23885/cx23885-i2c.c
@@ -334,7 +334,7 @@ int cx23885_i2c_register(struct cx23885_
 		};
 
 		memset(&info, 0, sizeof(struct i2c_board_info));
-		strscpy(info.type, "ir_video", I2C_NAME_SIZE);
+		stracpy(info.type, "ir_video");
 		/* Use quick read command for probe, some IR chips don't
 		 * support writes */
 		i2c_new_probed_device(&bus->i2c_adap, &info, addr_list,
diff -u -p a/drivers/hwmon/lm78.c b/drivers/hwmon/lm78.c
--- a/drivers/hwmon/lm78.c
+++ b/drivers/hwmon/lm78.c
@@ -617,7 +617,7 @@ static int lm78_i2c_detect(struct i2c_cl
 	if (isa)
 		mutex_unlock(&isa->update_lock);
 
-	strlcpy(info->type, client_name, I2C_NAME_SIZE);
+	stracpy(info->type, client_name);
 
 	return 0;
 
diff -u -p a/include/rdma/rdma_vt.h b/include/rdma/rdma_vt.h
--- a/include/rdma/rdma_vt.h
+++ b/include/rdma/rdma_vt.h
@@ -486,7 +486,7 @@ static inline void rvt_set_ibdev_name(st
 	 * to work by setting the name manually here.
 	 */
 	dev_set_name(&rdi->ibdev.dev, fmt, name, unit);
-	strlcpy(rdi->ibdev.name, dev_name(&rdi->ibdev.dev), IB_DEVICE_NAME_MAX);
+	stracpy(rdi->ibdev.name, dev_name(&rdi->ibdev.dev));
 }
 
 /**
diff -u -p a/kernel/cgroup/cgroup.c b/kernel/cgroup/cgroup.c
--- a/kernel/cgroup/cgroup.c
+++ b/kernel/cgroup/cgroup.c
@@ -1980,9 +1980,9 @@ void init_cgroup_root(struct cgroup_fs_c
 
 	root->flags = ctx->flags;
 	if (ctx->release_agent)
-		strscpy(root->release_agent_path, ctx->release_agent, PATH_MAX);
+		stracpy(root->release_agent_path, ctx->release_agent);
 	if (ctx->name)
-		strscpy(root->name, ctx->name, MAX_CGROUP_ROOT_NAMELEN);
+		stracpy(root->name, ctx->name);
 	if (ctx->cpuset_clone_children)
 		set_bit(CGRP_CPUSET_CLONE_CHILDREN, &root->cgrp.flags);
 }
diff -u -p a/drivers/cpuidle/cpuidle-powernv.c b/drivers/cpuidle/cpuidle-powernv.c
--- a/drivers/cpuidle/cpuidle-powernv.c
+++ b/drivers/cpuidle/cpuidle-powernv.c
@@ -236,7 +236,7 @@ static inline void add_powernv_state(int
 				     unsigned int exit_latency,
 				     u64 psscr_val, u64 psscr_mask)
 {
-	strlcpy(powernv_states[index].name, name, CPUIDLE_NAME_LEN);
+	stracpy(powernv_states[index].name, name);
 	strlcpy(powernv_states[index].desc, name, CPUIDLE_NAME_LEN);
 	powernv_states[index].flags = flags;
 	powernv_states[index].target_residency = target_residency;
diff -u -p a/drivers/hwmon/asc7621.c b/drivers/hwmon/asc7621.c
--- a/drivers/hwmon/asc7621.c
+++ b/drivers/hwmon/asc7621.c
@@ -1153,8 +1153,7 @@ static int asc7621_detect(struct i2c_cli
 
 		if (company == asc7621_chips[chip_index].company_id &&
 		    verstep == asc7621_chips[chip_index].verstep_id) {
-			strlcpy(info->type, asc7621_chips[chip_index].name,
-				I2C_NAME_SIZE);
+			stracpy(info->type, asc7621_chips[chip_index].name);
 
 			dev_info(&adapter->dev, "Matched %s at 0x%02x\n",
 				 asc7621_chips[chip_index].name, client->addr);
diff -u -p a/drivers/hwmon/nct7904.c b/drivers/hwmon/nct7904.c
--- a/drivers/hwmon/nct7904.c
+++ b/drivers/hwmon/nct7904.c
@@ -397,7 +397,7 @@ static int nct7904_detect(struct i2c_cli
 	    (i2c_smbus_read_byte_data(client, BANK_SEL_REG) & 0xf8) != 0x00)
 		return -ENODEV;
 
-	strlcpy(info->type, "nct7904", I2C_NAME_SIZE);
+	stracpy(info->type, "nct7904");
 
 	return 0;
 }
diff -u -p a/drivers/media/usb/dvb-usb-v2/anysee.c b/drivers/media/usb/dvb-usb-v2/anysee.c
--- a/drivers/media/usb/dvb-usb-v2/anysee.c
+++ b/drivers/media/usb/dvb-usb-v2/anysee.c
@@ -629,7 +629,7 @@ static int anysee_add_i2c_dev(struct dvb
 		.platform_data = platform_data,
 	};
 
-	strscpy(board_info.type, type, I2C_NAME_SIZE);
+	stracpy(board_info.type, type);
 
 	/* find first free client */
 	for (num = 0; num < ANYSEE_I2C_CLIENT_MAX; num++) {
diff -u -p a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -49,7 +49,7 @@ static struct nvmf_host *nvmf_host_add(c
 		goto out_unlock;
 
 	kref_init(&host->ref);
-	strlcpy(host->nqn, hostnqn, NVMF_NQN_SIZE);
+	stracpy(host->nqn, hostnqn);
 
 	list_add_tail(&host->list, &nvmf_hosts);
 out_unlock:
diff -u -p a/drivers/hwmon/lm83.c b/drivers/hwmon/lm83.c
--- a/drivers/hwmon/lm83.c
+++ b/drivers/hwmon/lm83.c
@@ -312,7 +312,7 @@ static int lm83_detect(struct i2c_client
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 
 	return 0;
 }
diff -u -p a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1397,7 +1397,7 @@ static int ssif_detect(struct i2c_client
 	if (rv)
 		rv = -ENODEV;
 	else
-		strlcpy(info->type, DEVICE_NAME, I2C_NAME_SIZE);
+		stracpy(info->type, DEVICE_NAME);
 	kfree(resp);
 	return rv;
 }
diff -u -p a/drivers/hwmon/gl518sm.c b/drivers/hwmon/gl518sm.c
--- a/drivers/hwmon/gl518sm.c
+++ b/drivers/hwmon/gl518sm.c
@@ -586,7 +586,7 @@ static int gl518_detect(struct i2c_clien
 	if (rev != 0x00 && rev != 0x80)
 		return -ENODEV;
 
-	strlcpy(info->type, "gl518sm", I2C_NAME_SIZE);
+	stracpy(info->type, "gl518sm");
 
 	return 0;
 }
diff -u -p a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2292,7 +2292,7 @@ static void nvme_init_subnqn(struct nvme
 	if(!(ctrl->quirks & NVME_QUIRK_IGNORE_DEV_SUBNQN)) {
 		nqnlen = strnlen(id->subnqn, NVMF_NQN_SIZE);
 		if (nqnlen > 0 && nqnlen < NVMF_NQN_SIZE) {
-			strlcpy(subsys->subnqn, id->subnqn, NVMF_NQN_SIZE);
+			stracpy(subsys->subnqn, id->subnqn);
 			return;
 		}
 
diff -u -p a/drivers/hwmon/lm95234.c b/drivers/hwmon/lm95234.c
--- a/drivers/hwmon/lm95234.c
+++ b/drivers/hwmon/lm95234.c
@@ -644,7 +644,7 @@ static int lm95234_detect(struct i2c_cli
 	if (val & model_mask)
 		return -ENODEV;
 
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 	return 0;
 }
 
diff -u -p a/drivers/net/ethernet/hp/hp100.c b/drivers/net/ethernet/hp/hp100.c
--- a/drivers/net/ethernet/hp/hp100.c
+++ b/drivers/net/ethernet/hp/hp100.c
@@ -643,7 +643,7 @@ static int hp100_probe1(struct net_devic
 	lp = netdev_priv(dev);
 
 	spin_lock_init(&lp->lock);
-	strlcpy(lp->id, eid, HP100_SIG_LEN);
+	stracpy(lp->id, eid);
 	lp->chip = chip;
 	lp->mode = local_mode;
 	lp->bus = bus;
diff -u -p a/drivers/scsi/bfa/bfa_fcs_lport.c b/drivers/scsi/bfa/bfa_fcs_lport.c
--- a/drivers/scsi/bfa/bfa_fcs_lport.c
+++ b/drivers/scsi/bfa/bfa_fcs_lport.c
@@ -2655,13 +2655,13 @@ bfa_fcs_fdmi_get_hbaattr(struct bfa_fcs_
 	bfa_fcs_fdmi_get_portattr(fdmi, &fcs_port_attr);
 	hba_attr->max_ct_pyld = fcs_port_attr.max_frm_size;
 
-	strlcpy(hba_attr->node_sym_name.symname,
-		port->port_cfg.node_sym_name.symname, BFA_SYMNAME_MAXLEN);
+	stracpy(hba_attr->node_sym_name.symname,
+		port->port_cfg.node_sym_name.symname);
 	strcpy(hba_attr->vendor_info, "QLogic");
 	hba_attr->num_ports =
 		cpu_to_be32(bfa_ioc_get_nports(&port->fcs->bfa->ioc));
 	hba_attr->fabric_name = port->fabric->lps->pr_nwwn;
-	strlcpy(hba_attr->bios_ver, hba_attr->option_rom_ver, BFA_VERSION_LEN);
+	stracpy(hba_attr->bios_ver, hba_attr->option_rom_ver);
 
 }
 
@@ -2740,8 +2740,8 @@ bfa_fcs_fdmi_get_portattr(struct bfa_fcs
 	port_attr->node_name = bfa_fcs_lport_get_nwwn(port);
 	port_attr->port_name = bfa_fcs_lport_get_pwwn(port);
 
-	strlcpy(port_attr->port_sym_name.symname,
-		bfa_fcs_lport_get_psym_name(port).symname, BFA_SYMNAME_MAXLEN);
+	stracpy(port_attr->port_sym_name.symname,
+		bfa_fcs_lport_get_psym_name(port).symname);
 	bfa_fcs_lport_get_attr(port, &lport_attr);
 	port_attr->port_type = cpu_to_be32(lport_attr.port_type);
 	port_attr->scos = pport_attr.cos_supported;
diff -u -p a/drivers/hwmon/adc128d818.c b/drivers/hwmon/adc128d818.c
--- a/drivers/hwmon/adc128d818.c
+++ b/drivers/hwmon/adc128d818.c
@@ -384,7 +384,7 @@ static int adc128_detect(struct i2c_clie
 	if (i2c_smbus_read_byte_data(client, ADC128_REG_BUSY_STATUS) & 0xfc)
 		return -ENODEV;
 
-	strlcpy(info->type, "adc128d818", I2C_NAME_SIZE);
+	stracpy(info->type, "adc128d818");
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/tmp401.c b/drivers/hwmon/tmp401.c
--- a/drivers/hwmon/tmp401.c
+++ b/drivers/hwmon/tmp401.c
@@ -678,7 +678,7 @@ static int tmp401_detect(struct i2c_clie
 	if (reg > 15)
 		return -ENODEV;
 
-	strlcpy(info->type, tmp401_id[kind].name, I2C_NAME_SIZE);
+	stracpy(info->type, tmp401_id[kind].name);
 
 	return 0;
 }
diff -u -p a/drivers/net/netconsole.c b/drivers/net/netconsole.c
--- a/drivers/net/netconsole.c
+++ b/drivers/net/netconsole.c
@@ -177,7 +177,7 @@ static struct netconsole_target *alloc_p
 		goto fail;
 
 	nt->np.name = "netconsole";
-	strlcpy(nt->np.dev_name, "eth0", IFNAMSIZ);
+	stracpy(nt->np.dev_name, "eth0");
 	nt->np.local_port = 6665;
 	nt->np.remote_port = 6666;
 	eth_broadcast_addr(nt->np.remote_mac);
@@ -413,7 +413,7 @@ static ssize_t dev_name_store(struct con
 		return -EINVAL;
 	}
 
-	strlcpy(nt->np.dev_name, buf, IFNAMSIZ);
+	stracpy(nt->np.dev_name, buf);
 
 	/* Get rid of possible trailing newline from echo(1) */
 	len = strnlen(nt->np.dev_name, IFNAMSIZ);
@@ -629,7 +629,7 @@ static struct config_item *make_netconso
 		return ERR_PTR(-ENOMEM);
 
 	nt->np.name = "netconsole";
-	strlcpy(nt->np.dev_name, "eth0", IFNAMSIZ);
+	stracpy(nt->np.dev_name, "eth0");
 	nt->np.local_port = 6665;
 	nt->np.remote_port = 6666;
 	eth_broadcast_addr(nt->np.remote_mac);
@@ -707,7 +707,7 @@ restart:
 		if (nt->np.dev == dev) {
 			switch (event) {
 			case NETDEV_CHANGENAME:
-				strlcpy(nt->np.dev_name, dev->name, IFNAMSIZ);
+				stracpy(nt->np.dev_name, dev->name);
 				break;
 			case NETDEV_RELEASE:
 			case NETDEV_JOIN:
diff -u -p a/drivers/target/target_core_user.c b/drivers/target/target_core_user.c
--- a/drivers/target/target_core_user.c
+++ b/drivers/target/target_core_user.c
@@ -2344,14 +2344,14 @@ static ssize_t tcmu_dev_config_store(str
 			pr_err("Unable to reconfigure device\n");
 			return ret;
 		}
-		strlcpy(udev->dev_config, page, TCMU_CONFIG_LEN);
+		stracpy(udev->dev_config, page);
 
 		ret = tcmu_update_uio_info(udev);
 		if (ret)
 			return ret;
 		return count;
 	}
-	strlcpy(udev->dev_config, page, TCMU_CONFIG_LEN);
+	stracpy(udev->dev_config, page);
 
 	return count;
 }
diff -u -p a/sound/aoa/codecs/onyx.c b/sound/aoa/codecs/onyx.c
--- a/sound/aoa/codecs/onyx.c
+++ b/sound/aoa/codecs/onyx.c
@@ -1011,7 +1011,7 @@ static int onyx_i2c_probe(struct i2c_cli
 		goto fail;
 	}
 
-	strlcpy(onyx->codec.name, "onyx", MAX_CODEC_NAME_LEN);
+	stracpy(onyx->codec.name, "onyx");
 	onyx->codec.owner = THIS_MODULE;
 	onyx->codec.init = onyx_init_codec;
 	onyx->codec.exit = onyx_exit_codec;
diff -u -p a/drivers/hwmon/lm90.c b/drivers/hwmon/lm90.c
--- a/drivers/hwmon/lm90.c
+++ b/drivers/hwmon/lm90.c
@@ -1610,7 +1610,7 @@ static int lm90_detect(struct i2c_client
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/lm85.c b/drivers/hwmon/lm85.c
--- a/drivers/hwmon/lm85.c
+++ b/drivers/hwmon/lm85.c
@@ -1539,7 +1539,7 @@ static int lm85_detect(struct i2c_client
 	if (!type_name)
 		return -ENODEV;
 
-	strlcpy(info->type, type_name, I2C_NAME_SIZE);
+	stracpy(info->type, type_name);
 
 	return 0;
 }
diff -u -p a/drivers/media/pci/bt8xx/bttv-i2c.c b/drivers/media/pci/bt8xx/bttv-i2c.c
--- a/drivers/media/pci/bt8xx/bttv-i2c.c
+++ b/drivers/media/pci/bt8xx/bttv-i2c.c
@@ -335,7 +335,7 @@ static void do_i2c_scan(char *name, stru
 /* init + register i2c adapter */
 int init_bttv_i2c(struct bttv *btv)
 {
-	strscpy(btv->i2c_client.name, "bttv internal", I2C_NAME_SIZE);
+	stracpy(btv->i2c_client.name, "bttv internal");
 
 	if (i2c_hw)
 		btv->use_i2c_hw = 1;
diff -u -p a/drivers/media/usb/dvb-usb/dib0700_devices.c b/drivers/media/usb/dvb-usb/dib0700_devices.c
--- a/drivers/media/usb/dvb-usb/dib0700_devices.c
+++ b/drivers/media/usb/dvb-usb/dib0700_devices.c
@@ -3760,7 +3760,7 @@ static int xbox_one_attach(struct dvb_us
 	mn88472_config.ts_mode = PARALLEL_TS_MODE;
 	mn88472_config.ts_clock = FIXED_TS_CLOCK;
 	memset(&info, 0, sizeof(struct i2c_board_info));
-	strscpy(info.type, "mn88472", I2C_NAME_SIZE);
+	stracpy(info.type, "mn88472");
 	info.addr = 0x18;
 	info.platform_data = &mn88472_config;
 	request_module(info.type);
@@ -3787,7 +3787,7 @@ static int xbox_one_attach(struct dvb_us
 	tda18250_config.fe = adap->fe_adap[0].fe;
 
 	memset(&info, 0, sizeof(struct i2c_board_info));
-	strscpy(info.type, "tda18250", I2C_NAME_SIZE);
+	stracpy(info.type, "tda18250");
 	info.addr = 0x60;
 	info.platform_data = &tda18250_config;
 
diff -u -p a/drivers/hwmon/lm63.c b/drivers/hwmon/lm63.c
--- a/drivers/hwmon/lm63.c
+++ b/drivers/hwmon/lm63.c
@@ -996,11 +996,11 @@ static int lm63_detect(struct i2c_client
 	}
 
 	if (chip_id == 0x41 && address == 0x4c)
-		strlcpy(info->type, "lm63", I2C_NAME_SIZE);
+		stracpy(info->type, "lm63");
 	else if (chip_id == 0x51 && (address == 0x18 || address == 0x4e))
-		strlcpy(info->type, "lm64", I2C_NAME_SIZE);
+		stracpy(info->type, "lm64");
 	else if (chip_id == 0x49 && address == 0x4c)
-		strlcpy(info->type, "lm96163", I2C_NAME_SIZE);
+		stracpy(info->type, "lm96163");
 	else
 		return -ENODEV;
 
diff -u -p a/drivers/media/usb/dvb-usb-v2/rtl28xxu.c b/drivers/media/usb/dvb-usb-v2/rtl28xxu.c
--- a/drivers/media/usb/dvb-usb-v2/rtl28xxu.c
+++ b/drivers/media/usb/dvb-usb-v2/rtl28xxu.c
@@ -693,7 +693,7 @@ static int rtl2831u_frontend_attach(stru
 
 	/* attach demodulator */
 	memset(&board_info, 0, sizeof(board_info));
-	strscpy(board_info.type, "rtl2830", I2C_NAME_SIZE);
+	stracpy(board_info.type, "rtl2830");
 	board_info.addr = 0x10;
 	board_info.platform_data = pdata;
 	request_module("%s", board_info.type);
@@ -914,7 +914,7 @@ static int rtl2832u_frontend_attach(stru
 
 	/* attach demodulator */
 	memset(&board_info, 0, sizeof(board_info));
-	strscpy(board_info.type, "rtl2832", I2C_NAME_SIZE);
+	stracpy(board_info.type, "rtl2832");
 	board_info.addr = 0x10;
 	board_info.platform_data = pdata;
 	request_module("%s", board_info.type);
@@ -953,7 +953,7 @@ static int rtl2832u_frontend_attach(stru
 
 			mn88472_config.fe = &adap->fe[1];
 			mn88472_config.i2c_wr_max = 22,
-			strscpy(info.type, "mn88472", I2C_NAME_SIZE);
+			stracpy(info.type, "mn88472");
 			mn88472_config.xtal = 20500000;
 			mn88472_config.ts_mode = SERIAL_TS_MODE;
 			mn88472_config.ts_clock = VARIABLE_TS_CLOCK;
@@ -978,7 +978,7 @@ static int rtl2832u_frontend_attach(stru
 
 			mn88473_config.fe = &adap->fe[1];
 			mn88473_config.i2c_wr_max = 22,
-			strscpy(info.type, "mn88473", I2C_NAME_SIZE);
+			stracpy(info.type, "mn88473");
 			info.addr = 0x18;
 			info.platform_data = &mn88473_config;
 			request_module(info.type);
@@ -1021,7 +1021,7 @@ static int rtl2832u_frontend_attach(stru
 			si2168_config.ts_mode = SI2168_TS_SERIAL;
 			si2168_config.ts_clock_inv = false;
 			si2168_config.ts_clock_gapped = true;
-			strscpy(info.type, "si2168", I2C_NAME_SIZE);
+			stracpy(info.type, "si2168");
 			info.addr = 0x64;
 			info.platform_data = &si2168_config;
 			request_module(info.type);
@@ -1212,7 +1212,7 @@ static int rtl2832u_tuner_attach(struct
 				.clock = 28800000,
 			};
 
-			strscpy(info.type, "e4000", I2C_NAME_SIZE);
+			stracpy(info.type, "e4000");
 			info.addr = 0x64;
 			info.platform_data = &e4000_config;
 
@@ -1236,7 +1236,7 @@ static int rtl2832u_tuner_attach(struct
 			};
 			struct i2c_board_info board_info = {};
 
-			strscpy(board_info.type, "fc2580", I2C_NAME_SIZE);
+			stracpy(board_info.type, "fc2580");
 			board_info.addr = 0x56;
 			board_info.platform_data = &fc2580_pdata;
 			request_module("fc2580");
@@ -1267,7 +1267,7 @@ static int rtl2832u_tuner_attach(struct
 		if (ret)
 			goto err;
 
-		strscpy(board_info.type, "tua9001", I2C_NAME_SIZE);
+		stracpy(board_info.type, "tua9001");
 		board_info.addr = 0x60;
 		board_info.platform_data = &tua9001_pdata;
 		request_module("tua9001");
@@ -1312,7 +1312,7 @@ static int rtl2832u_tuner_attach(struct
 				.inversion = false,
 			};
 
-			strscpy(info.type, "si2157", I2C_NAME_SIZE);
+			stracpy(info.type, "si2157");
 			info.addr = 0x60;
 			info.platform_data = &si2157_config;
 			request_module(info.type);
diff -u -p a/drivers/scsi/qedi/qedi_main.c b/drivers/scsi/qedi/qedi_main.c
--- a/drivers/scsi/qedi/qedi_main.c
+++ b/drivers/scsi/qedi/qedi_main.c
@@ -2460,7 +2460,7 @@ static int __qedi_probe(struct pci_dev *
 	sp_params.drv_minor = QEDI_DRIVER_MINOR_VER;
 	sp_params.drv_rev = QEDI_DRIVER_REV_VER;
 	sp_params.drv_eng = QEDI_DRIVER_ENG_VER;
-	strlcpy(sp_params.name, "qedi iSCSI", QED_DRV_VER_STR_SIZE);
+	stracpy(sp_params.name, "qedi iSCSI");
 	rc = qedi_ops->common->slowpath_start(qedi->cdev, &sp_params);
 	if (rc) {
 		QEDI_ERR(&qedi->dbg_ctx, "Cannot start slowpath\n");
diff -u -p a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -174,7 +174,7 @@ scmi_perf_domain_attributes_get(const st
 			dom_info->mult_factor =
 					(dom_info->sustained_freq_khz * 1000) /
 					dom_info->sustained_perf_level;
-		strlcpy(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
+		stracpy(dom_info->name, attr->name);
 	}
 
 	scmi_xfer_put(handle, t);
diff -u -p a/drivers/hwmon/emc6w201.c b/drivers/hwmon/emc6w201.c
--- a/drivers/hwmon/emc6w201.c
+++ b/drivers/hwmon/emc6w201.c
@@ -439,7 +439,7 @@ static int emc6w201_detect(struct i2c_cl
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, "emc6w201", I2C_NAME_SIZE);
+	stracpy(info->type, "emc6w201");
 
 	return 0;
 }
diff -u -p a/drivers/clk/tegra/clk-bpmp.c b/drivers/clk/tegra/clk-bpmp.c
--- a/drivers/clk/tegra/clk-bpmp.c
+++ b/drivers/clk/tegra/clk-bpmp.c
@@ -344,7 +344,7 @@ static int tegra_bpmp_clk_get_info(struc
 	if (err < 0)
 		return err;
 
-	strlcpy(info->name, response.name, MRQ_CLK_NAME_MAXLEN);
+	stracpy(info->name, response.name);
 	info->num_parents = response.num_parents;
 
 	for (i = 0; i < info->num_parents; i++)
diff -u -p a/drivers/hwmon/emc2103.c b/drivers/hwmon/emc2103.c
--- a/drivers/hwmon/emc2103.c
+++ b/drivers/hwmon/emc2103.c
@@ -643,7 +643,7 @@ emc2103_detect(struct i2c_client *new_cl
 	if ((product != 0x24) && (product != 0x26))
 		return -ENODEV;
 
-	strlcpy(info->type, "emc2103", I2C_NAME_SIZE);
+	stracpy(info->type, "emc2103");
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/w83792d.c b/drivers/hwmon/w83792d.c
--- a/drivers/hwmon/w83792d.c
+++ b/drivers/hwmon/w83792d.c
@@ -1361,7 +1361,7 @@ w83792d_detect(struct i2c_client *client
 	if (val1 != 0x7a || val2 != 0x5c)
 		return -ENODEV;
 
-	strlcpy(info->type, "w83792d", I2C_NAME_SIZE);
+	stracpy(info->type, "w83792d");
 
 	return 0;
 }
diff -u -p a/drivers/media/pci/cx18/cx18-i2c.c b/drivers/media/pci/cx18/cx18-i2c.c
--- a/drivers/media/pci/cx18/cx18-i2c.c
+++ b/drivers/media/pci/cx18/cx18-i2c.c
@@ -74,7 +74,7 @@ static int cx18_i2c_new_ir(struct cx18 *
 	unsigned short addr_list[2] = { addr, I2C_CLIENT_END };
 
 	memset(&info, 0, sizeof(struct i2c_board_info));
-	strscpy(info.type, type, I2C_NAME_SIZE);
+	stracpy(info.type, type);
 
 	/* Our default information for ir-kbd-i2c.c to use */
 	switch (hw) {
diff -u -p a/drivers/crypto/chelsio/chtls/chtls_main.c b/drivers/crypto/chelsio/chtls/chtls_main.c
--- a/drivers/crypto/chelsio/chtls/chtls_main.c
+++ b/drivers/crypto/chelsio/chtls/chtls_main.c
@@ -185,7 +185,7 @@ static void chtls_register_dev(struct ch
 {
 	struct tls_device *tlsdev = &cdev->tlsdev;
 
-	strlcpy(tlsdev->name, "chtls", TLS_DEVICE_NAME_MAX);
+	stracpy(tlsdev->name, "chtls");
 	strlcat(tlsdev->name, cdev->lldi->ports[0]->name,
 		TLS_DEVICE_NAME_MAX);
 	tlsdev->feature = chtls_inline_feature;
diff -u -p a/drivers/misc/ics932s401.c b/drivers/misc/ics932s401.c
--- a/drivers/misc/ics932s401.c
+++ b/drivers/misc/ics932s401.c
@@ -424,7 +424,7 @@ static int ics932s401_detect(struct i2c_
 	if (revision != ICS932S401_REV)
 		dev_info(&adapter->dev, "Unknown revision %d\n", revision);
 
-	strlcpy(info->type, "ics932s401", I2C_NAME_SIZE);
+	stracpy(info->type, "ics932s401");
 
 	return 0;
 }
diff -u -p a/fs/gfs2/ops_fstype.c b/fs/gfs2/ops_fstype.c
--- a/fs/gfs2/ops_fstype.c
+++ b/fs/gfs2/ops_fstype.c
@@ -372,8 +372,8 @@ static int init_names(struct gfs2_sbd *s
 	if (!table[0])
 		table = sdp->sd_vfs->s_id;
 
-	strlcpy(sdp->sd_proto_name, proto, GFS2_FSNAME_LEN);
-	strlcpy(sdp->sd_table_name, table, GFS2_FSNAME_LEN);
+	stracpy(sdp->sd_proto_name, proto);
+	stracpy(sdp->sd_table_name, table);
 
 	table = sdp->sd_table_name;
 	while ((table = strchr(table, '/')))
@@ -1346,13 +1346,13 @@ static int gfs2_parse_param(struct fs_co
 
 	switch (o) {
 	case Opt_lockproto:
-		strlcpy(args->ar_lockproto, param->string, GFS2_LOCKNAME_LEN);
+		stracpy(args->ar_lockproto, param->string);
 		break;
 	case Opt_locktable:
-		strlcpy(args->ar_locktable, param->string, GFS2_LOCKNAME_LEN);
+		stracpy(args->ar_locktable, param->string);
 		break;
 	case Opt_hostdata:
-		strlcpy(args->ar_hostdata, param->string, GFS2_LOCKNAME_LEN);
+		stracpy(args->ar_hostdata, param->string);
 		break;
 	case Opt_spectator:
 		args->ar_spectator = 1;
diff -u -p a/drivers/hwmon/dme1737.c b/drivers/hwmon/dme1737.c
--- a/drivers/hwmon/dme1737.c
+++ b/drivers/hwmon/dme1737.c
@@ -2456,7 +2456,7 @@ static int dme1737_i2c_detect(struct i2c
 	dev_info(dev, "Found a %s chip at 0x%02x (rev 0x%02x).\n",
 		 verstep == SCH5027_VERSTEP ? "SCH5027" : "DME1737",
 		 client->addr, verstep);
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 
 	return 0;
 }
diff -u -p a/drivers/media/pci/bt8xx/bttv-input.c b/drivers/media/pci/bt8xx/bttv-input.c
--- a/drivers/media/pci/bt8xx/bttv-input.c
+++ b/drivers/media/pci/bt8xx/bttv-input.c
@@ -373,7 +373,7 @@ void init_bttv_i2c_ir(struct bttv *btv)
 
 	memset(&info, 0, sizeof(struct i2c_board_info));
 	memset(&btv->init_data, 0, sizeof(btv->init_data));
-	strscpy(info.type, "ir_video", I2C_NAME_SIZE);
+	stracpy(info.type, "ir_video");
 
 	switch (btv->c.type) {
 	case BTTV_BOARD_PV951:
diff -u -p a/drivers/media/usb/tm6000/tm6000-i2c.c b/drivers/media/usb/tm6000/tm6000-i2c.c
--- a/drivers/media/usb/tm6000/tm6000-i2c.c
+++ b/drivers/media/usb/tm6000/tm6000-i2c.c
@@ -300,7 +300,7 @@ int tm6000_i2c_register(struct tm6000_co
 		return rc;
 
 	dev->i2c_client.adapter = &dev->i2c_adap;
-	strscpy(dev->i2c_client.name, "tm6000 internal", I2C_NAME_SIZE);
+	stracpy(dev->i2c_client.name, "tm6000 internal");
 	tm6000_i2c_eeprom(dev);
 
 	return 0;
diff -u -p a/drivers/hwmon/adt7475.c b/drivers/hwmon/adt7475.c
--- a/drivers/hwmon/adt7475.c
+++ b/drivers/hwmon/adt7475.c
@@ -1337,7 +1337,7 @@ static int adt7475_detect(struct i2c_cli
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/thmc50.c b/drivers/hwmon/thmc50.c
--- a/drivers/hwmon/thmc50.c
+++ b/drivers/hwmon/thmc50.c
@@ -352,7 +352,7 @@ static int thmc50_detect(struct i2c_clie
 	pr_debug("thmc50: Detected %s (version %x, revision %x)\n",
 		 type_name, (revision >> 4) - 0xc, revision & 0xf);
 
-	strlcpy(info->type, type_name, I2C_NAME_SIZE);
+	stracpy(info->type, type_name);
 
 	return 0;
 }
diff -u -p a/drivers/media/dvb-frontends/m88ds3103.c b/drivers/media/dvb-frontends/m88ds3103.c
--- a/drivers/media/dvb-frontends/m88ds3103.c
+++ b/drivers/media/dvb-frontends/m88ds3103.c
@@ -1274,7 +1274,7 @@ struct dvb_frontend *m88ds3103_attach(co
 	pdata.attach_in_use = true;
 
 	memset(&board_info, 0, sizeof(board_info));
-	strscpy(board_info.type, "m88ds3103", I2C_NAME_SIZE);
+	stracpy(board_info.type, "m88ds3103");
 	board_info.addr = cfg->i2c_addr;
 	board_info.platform_data = &pdata;
 	client = i2c_new_device(i2c, &board_info);
diff -u -p a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c
@@ -383,13 +383,11 @@ static void brcmf_mp_attach(void)
 	 * if not set then if available use the platform data version. To make
 	 * sure it gets initialized at all, always copy the module param version
 	 */
-	strlcpy(brcmf_mp_global.firmware_path, brcmf_firmware_path,
-		BRCMF_FW_ALTPATH_LEN);
+	stracpy(brcmf_mp_global.firmware_path, brcmf_firmware_path);
 	if ((brcmfmac_pdata) && (brcmfmac_pdata->fw_alternative_path) &&
 	    (brcmf_mp_global.firmware_path[0] == '\0')) {
-		strlcpy(brcmf_mp_global.firmware_path,
-			brcmfmac_pdata->fw_alternative_path,
-			BRCMF_FW_ALTPATH_LEN);
+		stracpy(brcmf_mp_global.firmware_path,
+			brcmfmac_pdata->fw_alternative_path);
 	}
 }
 
diff -u -p a/drivers/hwmon/lm93.c b/drivers/hwmon/lm93.c
--- a/drivers/hwmon/lm93.c
+++ b/drivers/hwmon/lm93.c
@@ -2575,7 +2575,7 @@ static int lm93_detect(struct i2c_client
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 	dev_dbg(&adapter->dev, "loading %s at %d, 0x%02x\n",
 		client->name, i2c_adapter_id(client->adapter),
 		client->addr);
diff -u -p a/drivers/i2c/busses/i2c-i801.c b/drivers/i2c/busses/i2c-i801.c
--- a/drivers/i2c/busses/i2c-i801.c
+++ b/drivers/i2c/busses/i2c-i801.c
@@ -1134,7 +1134,7 @@ static void dmi_check_onboard_device(u8
 
 		memset(&info, 0, sizeof(struct i2c_board_info));
 		info.addr = dmi_devices[i].i2c_addr;
-		strlcpy(info.type, dmi_devices[i].i2c_type, I2C_NAME_SIZE);
+		stracpy(info.type, dmi_devices[i].i2c_type);
 		i2c_new_device(adap, &info);
 		break;
 	}
@@ -1279,7 +1279,7 @@ static void register_dell_lis3lv02d_i2c_
 
 	memset(&info, 0, sizeof(struct i2c_board_info));
 	info.addr = dell_lis3lv02d_devices[i].i2c_addr;
-	strlcpy(info.type, "lis3lv02d", I2C_NAME_SIZE);
+	stracpy(info.type, "lis3lv02d");
 	i2c_new_device(&priv->adapter, &info);
 }
 
@@ -1295,7 +1295,7 @@ static void i801_probe_optional_slaves(s
 
 		memset(&info, 0, sizeof(struct i2c_board_info));
 		info.addr = apanel_addr;
-		strlcpy(info.type, "fujitsu_apanel", I2C_NAME_SIZE);
+		stracpy(info.type, "fujitsu_apanel");
 		i2c_new_device(&priv->adapter, &info);
 	}
 
diff -u -p a/drivers/macintosh/therm_windtunnel.c b/drivers/macintosh/therm_windtunnel.c
--- a/drivers/macintosh/therm_windtunnel.c
+++ b/drivers/macintosh/therm_windtunnel.c
@@ -320,10 +320,10 @@ do_attach( struct i2c_adapter *adapter )
 		struct i2c_board_info info;
 
 		memset(&info, 0, sizeof(struct i2c_board_info));
-		strlcpy(info.type, "therm_ds1775", I2C_NAME_SIZE);
+		stracpy(info.type, "therm_ds1775");
 		i2c_new_probed_device(adapter, &info, scan_ds1775, NULL);
 
-		strlcpy(info.type, "therm_adm1030", I2C_NAME_SIZE);
+		stracpy(info.type, "therm_adm1030");
 		i2c_new_probed_device(adapter, &info, scan_adm1030, NULL);
 
 		if( x.thermostat && x.fan ) {
diff -u -p a/drivers/s390/char/hmcdrv_cache.c b/drivers/s390/char/hmcdrv_cache.c
--- a/drivers/s390/char/hmcdrv_cache.c
+++ b/drivers/s390/char/hmcdrv_cache.c
@@ -154,8 +154,7 @@ static ssize_t hmcdrv_cache_do(const str
 		/* cache some file info (FTP command, file name and file
 		 * size) unconditionally
 		 */
-		strlcpy(hmcdrv_cache_file.fname, ftp->fname,
-			HMCDRV_FTP_FIDENT_MAX);
+		stracpy(hmcdrv_cache_file.fname, ftp->fname);
 		hmcdrv_cache_file.id = ftp->id;
 		pr_debug("caching cmd %d, file size %zu for '%s'\n",
 			 ftp->id, hmcdrv_cache_file.fsize, ftp->fname);
diff -u -p a/kernel/relay.c b/kernel/relay.c
--- a/kernel/relay.c
+++ b/kernel/relay.c
@@ -589,7 +589,7 @@ struct rchan *relay_open(const char *bas
 	chan->private_data = private_data;
 	if (base_filename) {
 		chan->has_base_filename = 1;
-		strlcpy(chan->base_filename, base_filename, NAME_MAX);
+		stracpy(chan->base_filename, base_filename);
 	}
 	setup_callbacks(chan, cb);
 	kref_init(&chan->kref);
@@ -660,7 +660,7 @@ int relay_late_setup_files(struct rchan
 	if (!chan || !base_filename)
 		return -EINVAL;
 
-	strlcpy(chan->base_filename, base_filename, NAME_MAX);
+	stracpy(chan->base_filename, base_filename);
 
 	mutex_lock(&relay_channels_mutex);
 	/* Is chan already set up? */
diff -u -p a/net/netfilter/ipset/ip_set_core.c b/net/netfilter/ipset/ip_set_core.c
--- a/net/netfilter/ipset/ip_set_core.c
+++ b/net/netfilter/ipset/ip_set_core.c
@@ -917,7 +917,7 @@ static int ip_set_create(struct net *net
 	if (!set)
 		return -ENOMEM;
 	spin_lock_init(&set->lock);
-	strlcpy(set->name, name, IPSET_MAXNAMELEN);
+	stracpy(set->name, name);
 	set->family = family;
 	set->revision = revision;
 
diff -u -p a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -111,7 +111,7 @@ static int scmi_clock_attributes_get(con
 
 	ret = scmi_do_xfer(handle, t);
 	if (!ret)
-		strlcpy(clk->name, attr->name, SCMI_MAX_STR_SIZE);
+		stracpy(clk->name, attr->name);
 	else
 		clk->name[0] = '\0';
 
diff -u -p a/drivers/hwmon/lm75.c b/drivers/hwmon/lm75.c
--- a/drivers/hwmon/lm75.c
+++ b/drivers/hwmon/lm75.c
@@ -607,7 +607,7 @@ static int lm75_detect(struct i2c_client
 			return -ENODEV;
 	}
 
-	strlcpy(info->type, is_lm75a ? "lm75a" : "lm75", I2C_NAME_SIZE);
+	stracpy(info->type, is_lm75a ? "lm75a" : "lm75");
 
 	return 0;
 }
diff -u -p a/drivers/misc/eeprom/eeprom.c b/drivers/misc/eeprom/eeprom.c
--- a/drivers/misc/eeprom/eeprom.c
+++ b/drivers/misc/eeprom/eeprom.c
@@ -136,7 +136,7 @@ static int eeprom_detect(struct i2c_clie
 	 && !i2c_check_functionality(adapter, I2C_FUNC_SMBUS_READ_I2C_BLOCK))
 		return -ENODEV;
 
-	strlcpy(info->type, "eeprom", I2C_NAME_SIZE);
+	stracpy(info->type, "eeprom");
 
 	return 0;
 }
diff -u -p a/drivers/s390/block/dasd_eer.c b/drivers/s390/block/dasd_eer.c
--- a/drivers/s390/block/dasd_eer.c
+++ b/drivers/s390/block/dasd_eer.c
@@ -313,8 +313,7 @@ static void dasd_eer_write_standard_trig
 	ktime_get_real_ts64(&ts);
 	header.tv_sec = ts.tv_sec;
 	header.tv_usec = ts.tv_nsec / NSEC_PER_USEC;
-	strlcpy(header.busid, dev_name(&device->cdev->dev),
-		DASD_EER_BUSID_SIZE);
+	stracpy(header.busid, dev_name(&device->cdev->dev));
 
 	spin_lock_irqsave(&bufferlock, flags);
 	list_for_each_entry(eerb, &bufferlist, list) {
@@ -356,8 +355,7 @@ static void dasd_eer_write_snss_trigger(
 	ktime_get_real_ts64(&ts);
 	header.tv_sec = ts.tv_sec;
 	header.tv_usec = ts.tv_nsec / NSEC_PER_USEC;
-	strlcpy(header.busid, dev_name(&device->cdev->dev),
-		DASD_EER_BUSID_SIZE);
+	stracpy(header.busid, dev_name(&device->cdev->dev));
 
 	spin_lock_irqsave(&bufferlock, flags);
 	list_for_each_entry(eerb, &bufferlist, list) {
diff -u -p a/net/mac80211/iface.c b/net/mac80211/iface.c
--- a/net/mac80211/iface.c
+++ b/net/mac80211/iface.c
@@ -1745,7 +1745,7 @@ int ieee80211_if_add(struct ieee80211_lo
 		wdev = &sdata->wdev;
 
 		sdata->dev = NULL;
-		strlcpy(sdata->name, name, IFNAMSIZ);
+		stracpy(sdata->name, name);
 		ieee80211_assign_perm_addr(local, wdev->address, type);
 		memcpy(sdata->vif.addr, wdev->address, ETH_ALEN);
 	} else {
diff -u -p a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
--- a/drivers/firmware/arm_scmi/power.c
+++ b/drivers/firmware/arm_scmi/power.c
@@ -106,7 +106,7 @@ scmi_power_domain_attributes_get(const s
 		dom_info->state_set_notify = SUPPORTS_STATE_SET_NOTIFY(flags);
 		dom_info->state_set_async = SUPPORTS_STATE_SET_ASYNC(flags);
 		dom_info->state_set_sync = SUPPORTS_STATE_SET_SYNC(flags);
-		strlcpy(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
+		stracpy(dom_info->name, attr->name);
 	}
 
 	scmi_xfer_put(handle, t);
diff -u -p a/drivers/hwmon/adm1031.c b/drivers/hwmon/adm1031.c
--- a/drivers/hwmon/adm1031.c
+++ b/drivers/hwmon/adm1031.c
@@ -986,7 +986,7 @@ static int adm1031_detect(struct i2c_cli
 		return -ENODEV;
 	name = (id == 0x30) ? "adm1030" : "adm1031";
 
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/stts751.c b/drivers/hwmon/stts751.c
--- a/drivers/hwmon/stts751.c
+++ b/drivers/hwmon/stts751.c
@@ -692,7 +692,7 @@ static int stts751_detect(struct i2c_cli
 	}
 	dev_dbg(&new_client->dev, "Chip %s detected", name);
 
-	strlcpy(info->type, stts751_id[0].name, I2C_NAME_SIZE);
+	stracpy(info->type, stts751_id[0].name);
 	return 0;
 }
 
diff -u -p a/drivers/infiniband/core/device.c b/drivers/infiniband/core/device.c
--- a/drivers/infiniband/core/device.c
+++ b/drivers/infiniband/core/device.c
@@ -429,7 +429,7 @@ int ib_device_rename(struct ib_device *i
 		return ret;
 	}
 
-	strlcpy(ibdev->name, name, IB_DEVICE_NAME_MAX);
+	stracpy(ibdev->name, name);
 	ret = rename_compat_devs(ibdev);
 
 	downgrade_write(&devices_rwsem);
@@ -1142,7 +1142,7 @@ static int assign_name(struct ib_device
 		ret = -ENFILE;
 		goto out;
 	}
-	strlcpy(device->name, dev_name(&device->dev), IB_DEVICE_NAME_MAX);
+	stracpy(device->name, dev_name(&device->dev));
 
 	ret = xa_alloc_cyclic(&devices, &device->index, device, xa_limit_31b,
 			&last_id, GFP_KERNEL);
diff -u -p a/drivers/mfd/htc-i2cpld.c b/drivers/mfd/htc-i2cpld.c
--- a/drivers/mfd/htc-i2cpld.c
+++ b/drivers/mfd/htc-i2cpld.c
@@ -351,7 +351,7 @@ static int htcpld_register_chip_i2c(
 
 	memset(&info, 0, sizeof(struct i2c_board_info));
 	info.addr = plat_chip_data->addr;
-	strlcpy(info.type, "htcpld-chip", I2C_NAME_SIZE);
+	stracpy(info.type, "htcpld-chip");
 	info.platform_data = chip;
 
 	/* Add the I2C device.  This calls the probe() function. */
diff -u -p a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c
@@ -3364,8 +3364,7 @@ static void bnx2x_drv_info_ether_stat(st
 		&bp->sp_objs->mac_obj;
 	int i;
 
-	strlcpy(ether_stat->version, DRV_MODULE_VERSION,
-		ETH_STAT_INFO_VERSION_LEN);
+	stracpy(ether_stat->version, DRV_MODULE_VERSION);
 
 	/* get DRV_INFO_ETH_STAT_NUM_MACS_REQUIRED macs, placing them in the
 	 * mac_local field in ether_stat struct. The base address is offset by 2
diff -u -p a/tools/perf/util/machine.c b/tools/perf/util/machine.c
--- a/tools/perf/util/machine.c
+++ b/tools/perf/util/machine.c
@@ -988,7 +988,7 @@ int machine__create_extra_kernel_map(str
 	kmap = map__kmap(map);
 
 	kmap->kmaps = &machine->kmaps;
-	strlcpy(kmap->name, xm->name, KMAP_NAME_LEN);
+	stracpy(kmap->name, xm->name);
 
 	map_groups__insert(&machine->kmaps, map);
 
@@ -1078,7 +1078,7 @@ int machine__map_x86_64_entry_trampoline
 			.pgoff = pgoff,
 		};
 
-		strlcpy(xm.name, ENTRY_TRAMPOLINE_NAME, KMAP_NAME_LEN);
+		stracpy(xm.name, ENTRY_TRAMPOLINE_NAME);
 
 		if (machine__create_extra_kernel_map(machine, kernel, &xm) < 0)
 			return -1;
@@ -1542,7 +1542,7 @@ static int machine__process_extra_kernel
 	if (kernel == NULL)
 		return -1;
 
-	strlcpy(xm.name, event->mmap.filename, KMAP_NAME_LEN);
+	stracpy(xm.name, event->mmap.filename);
 
 	return machine__create_extra_kernel_map(machine, kernel, &xm);
 }
diff -u -p a/drivers/hwmon/lm95241.c b/drivers/hwmon/lm95241.c
--- a/drivers/hwmon/lm95241.c
+++ b/drivers/hwmon/lm95241.c
@@ -389,7 +389,7 @@ static int lm95241_detect(struct i2c_cli
 	}
 
 	/* Fill the i2c board info */
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 	return 0;
 }
 
diff -u -p a/drivers/media/i2c/saa7127.c b/drivers/media/i2c/saa7127.c
--- a/drivers/media/i2c/saa7127.c
+++ b/drivers/media/i2c/saa7127.c
@@ -752,10 +752,10 @@ static int saa7127_probe(struct i2c_clie
 			saa7127_write(sd, SAA7129_REG_FADE_KEY_COL2,
 					read_result);
 			state->ident = SAA7129;
-			strscpy(client->name, "saa7129", I2C_NAME_SIZE);
+			stracpy(client->name, "saa7129");
 		} else {
 			state->ident = SAA7127;
-			strscpy(client->name, "saa7127", I2C_NAME_SIZE);
+			stracpy(client->name, "saa7127");
 		}
 	}
 
diff -u -p a/sound/aoa/codecs/tas.c b/sound/aoa/codecs/tas.c
--- a/sound/aoa/codecs/tas.c
+++ b/sound/aoa/codecs/tas.c
@@ -894,7 +894,7 @@ static int tas_i2c_probe(struct i2c_clie
 	/* seems that half is a saner default */
 	tas->drc_range = TAS3004_DRC_MAX / 2;
 
-	strlcpy(tas->codec.name, "tas", MAX_CODEC_NAME_LEN);
+	stracpy(tas->codec.name, "tas");
 	tas->codec.owner = THIS_MODULE;
 	tas->codec.init = tas_init_codec;
 	tas->codec.exit = tas_exit_codec;
diff -u -p a/drivers/hwmon/lm95245.c b/drivers/hwmon/lm95245.c
--- a/drivers/hwmon/lm95245.c
+++ b/drivers/hwmon/lm95245.c
@@ -461,7 +461,7 @@ static int lm95245_detect(struct i2c_cli
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 	return 0;
 }
 
diff -u -p a/drivers/hwmon/gl520sm.c b/drivers/hwmon/gl520sm.c
--- a/drivers/hwmon/gl520sm.c
+++ b/drivers/hwmon/gl520sm.c
@@ -811,7 +811,7 @@ static int gl520_detect(struct i2c_clien
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, "gl520sm", I2C_NAME_SIZE);
+	stracpy(info->type, "gl520sm");
 
 	return 0;
 }
diff -u -p a/drivers/media/pci/saa7164/saa7164-dvb.c b/drivers/media/pci/saa7164/saa7164-dvb.c
--- a/drivers/media/pci/saa7164/saa7164-dvb.c
+++ b/drivers/media/pci/saa7164/saa7164-dvb.c
@@ -110,7 +110,7 @@ static int si2157_attach(struct saa7164_
 
 	memset(&bi, 0, sizeof(bi));
 
-	strscpy(bi.type, "si2157", I2C_NAME_SIZE);
+	stracpy(bi.type, "si2157");
 	bi.platform_data = cfg;
 	bi.addr = addr8bit >> 1;
 
@@ -633,7 +633,7 @@ int saa7164_dvb_register(struct saa7164_
 			si2168_config.fe = &port->dvb.frontend;
 			si2168_config.ts_mode = SI2168_TS_SERIAL;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2168", I2C_NAME_SIZE);
+			stracpy(info.type, "si2168");
 			info.addr = 0xc8 >> 1;
 			info.platform_data = &si2168_config;
 			request_module(info.type);
@@ -653,7 +653,7 @@ int saa7164_dvb_register(struct saa7164_
 			si2157_config.if_port = 1;
 			si2157_config.fe = port->dvb.frontend;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2157", I2C_NAME_SIZE);
+			stracpy(info.type, "si2157");
 			info.addr = 0xc0 >> 1;
 			info.platform_data = &si2157_config;
 			request_module(info.type);
@@ -678,7 +678,7 @@ int saa7164_dvb_register(struct saa7164_
 			si2168_config.fe = &port->dvb.frontend;
 			si2168_config.ts_mode = SI2168_TS_SERIAL;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2168", I2C_NAME_SIZE);
+			stracpy(info.type, "si2168");
 			info.addr = 0xcc >> 1;
 			info.platform_data = &si2168_config;
 			request_module(info.type);
@@ -698,7 +698,7 @@ int saa7164_dvb_register(struct saa7164_
 			si2157_config.fe = port->dvb.frontend;
 			si2157_config.if_port = 1;
 			memset(&info, 0, sizeof(struct i2c_board_info));
-			strscpy(info.type, "si2157", I2C_NAME_SIZE);
+			stracpy(info.type, "si2157");
 			info.addr = 0xc0 >> 1;
 			info.platform_data = &si2157_config;
 			request_module(info.type);
diff -u -p a/drivers/media/usb/dvb-usb/dw2102.c b/drivers/media/usb/dvb-usb/dw2102.c
--- a/drivers/media/usb/dvb-usb/dw2102.c
+++ b/drivers/media/usb/dvb-usb/dw2102.c
@@ -1586,7 +1586,7 @@ static int tt_s2_4600_frontend_attach(st
 	m88ds3103_pdata.lnb_hv_pol = 1;
 	m88ds3103_pdata.lnb_en_pol = 0;
 	memset(&board_info, 0, sizeof(board_info));
-	strscpy(board_info.type, "m88ds3103", I2C_NAME_SIZE);
+	stracpy(board_info.type, "m88ds3103");
 	board_info.addr = 0x68;
 	board_info.platform_data = &m88ds3103_pdata;
 	request_module("m88ds3103");
@@ -1605,7 +1605,7 @@ static int tt_s2_4600_frontend_attach(st
 	/* attach tuner */
 	ts2020_config.fe = adap->fe_adap[0].fe;
 	memset(&board_info, 0, sizeof(board_info));
-	strscpy(board_info.type, "ts2022", I2C_NAME_SIZE);
+	stracpy(board_info.type, "ts2022");
 	board_info.addr = 0x60;
 	board_info.platform_data = &ts2020_config;
 	request_module("ts2020");
diff -u -p a/drivers/net/ethernet/realtek/r8169_firmware.c b/drivers/net/ethernet/realtek/r8169_firmware.c
--- a/drivers/net/ethernet/realtek/r8169_firmware.c
+++ b/drivers/net/ethernet/realtek/r8169_firmware.c
@@ -68,7 +68,7 @@ static bool rtl_fw_format_ok(struct rtl_
 		if (size > (fw->size - start) / FW_OPCODE_SIZE)
 			return false;
 
-		strscpy(rtl_fw->version, fw_info->version, RTL_VER_SIZE);
+		stracpy(rtl_fw->version, fw_info->version);
 
 		pa->code = (__le32 *)(fw->data + start);
 		pa->size = size;
@@ -76,7 +76,7 @@ static bool rtl_fw_format_ok(struct rtl_
 		if (fw->size % FW_OPCODE_SIZE)
 			return false;
 
-		strscpy(rtl_fw->version, rtl_fw->fw_name, RTL_VER_SIZE);
+		stracpy(rtl_fw->version, rtl_fw->fw_name);
 
 		pa->code = (__le32 *)fw->data;
 		pa->size = fw->size / FW_OPCODE_SIZE;
diff -u -p a/drivers/platform/x86/intel_cht_int33fe.c b/drivers/platform/x86/intel_cht_int33fe.c
--- a/drivers/platform/x86/intel_cht_int33fe.c
+++ b/drivers/platform/x86/intel_cht_int33fe.c
@@ -285,7 +285,7 @@ cht_int33fe_register_max17047(struct dev
 	}
 
 	memset(&board_info, 0, sizeof(board_info));
-	strlcpy(board_info.type, "max17047", I2C_NAME_SIZE);
+	stracpy(board_info.type, "max17047");
 	board_info.dev_name = "max17047";
 	board_info.fwnode = fwnode;
 	data->max17047 = i2c_acpi_new_device(dev, 1, &board_info);
@@ -374,7 +374,7 @@ static int cht_int33fe_probe(struct plat
 	}
 
 	memset(&board_info, 0, sizeof(board_info));
-	strlcpy(board_info.type, "typec_fusb302", I2C_NAME_SIZE);
+	stracpy(board_info.type, "typec_fusb302");
 	board_info.dev_name = "fusb302";
 	board_info.fwnode = fwnode;
 	board_info.irq = fusb302_irq;
@@ -394,7 +394,7 @@ static int cht_int33fe_probe(struct plat
 	memset(&board_info, 0, sizeof(board_info));
 	board_info.dev_name = "pi3usb30532";
 	board_info.fwnode = fwnode;
-	strlcpy(board_info.type, "pi3usb30532", I2C_NAME_SIZE);
+	stracpy(board_info.type, "pi3usb30532");
 
 	data->pi3usb30532 = i2c_acpi_new_device(dev, 3, &board_info);
 	if (IS_ERR(data->pi3usb30532)) {
diff -u -p a/net/core/netpoll.c b/net/core/netpoll.c
--- a/net/core/netpoll.c
+++ b/net/core/netpoll.c
@@ -588,7 +588,7 @@ int __netpoll_setup(struct netpoll *np,
 	int err;
 
 	np->dev = ndev;
-	strlcpy(np->dev_name, ndev->name, IFNAMSIZ);
+	stracpy(np->dev_name, ndev->name);
 
 	if (ndev->priv_flags & IFF_DISABLE_NETPOLL) {
 		np_err(np, "%s doesn't support polling, aborting\n",
diff -u -p a/drivers/hwmon/lm92.c b/drivers/hwmon/lm92.c
--- a/drivers/hwmon/lm92.c
+++ b/drivers/hwmon/lm92.c
@@ -287,7 +287,7 @@ static int lm92_detect(struct i2c_client
 	else
 		return -ENODEV;
 
-	strlcpy(info->type, "lm92", I2C_NAME_SIZE);
+	stracpy(info->type, "lm92");
 
 	return 0;
 }
diff -u -p a/drivers/media/dvb-frontends/ts2020.c b/drivers/media/dvb-frontends/ts2020.c
--- a/drivers/media/dvb-frontends/ts2020.c
+++ b/drivers/media/dvb-frontends/ts2020.c
@@ -516,7 +516,7 @@ struct dvb_frontend *ts2020_attach(struc
 	pdata.attach_in_use = true;
 
 	memset(&board_info, 0, sizeof(board_info));
-	strscpy(board_info.type, "ts2020", I2C_NAME_SIZE);
+	stracpy(board_info.type, "ts2020");
 	board_info.addr = config->tuner_address;
 	board_info.platform_data = &pdata;
 	client = i2c_new_device(i2c, &board_info);
diff -u -p a/drivers/soc/qcom/apr.c b/drivers/soc/qcom/apr.c
--- a/drivers/soc/qcom/apr.c
+++ b/drivers/soc/qcom/apr.c
@@ -273,7 +273,7 @@ static int apr_add_device(struct device
 	if (np)
 		snprintf(adev->name, APR_NAME_SIZE, "%pOFn", np);
 	else
-		strscpy(adev->name, id->name, APR_NAME_SIZE);
+		stracpy(adev->name, id->name);
 
 	dev_set_name(&adev->dev, "aprsvc:%s:%x:%x", adev->name,
 		     id->domain_id, id->svc_id);
diff -u -p a/kernel/kallsyms.c b/kernel/kallsyms.c
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -495,7 +495,7 @@ static int get_ksymbol_ftrace_mod(struct
 
 static int get_ksymbol_bpf(struct kallsym_iter *iter)
 {
-	strlcpy(iter->module_name, "bpf", MODULE_NAME_LEN);
+	stracpy(iter->module_name, "bpf");
 	iter->exported = 0;
 	return bpf_get_kallsym(iter->pos - iter->pos_ftrace_mod_end,
 			       &iter->value, &iter->type,
diff -u -p a/drivers/hwmon/adm1025.c b/drivers/hwmon/adm1025.c
--- a/drivers/hwmon/adm1025.c
+++ b/drivers/hwmon/adm1025.c
@@ -470,7 +470,7 @@ static int adm1025_detect(struct i2c_cli
 	else
 		return -ENODEV;
 
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/w83781d.c b/drivers/hwmon/w83781d.c
--- a/drivers/hwmon/w83781d.c
+++ b/drivers/hwmon/w83781d.c
@@ -1171,7 +1171,7 @@ w83781d_detect(struct i2c_client *client
 	if (isa)
 		mutex_unlock(&isa->update_lock);
 
-	strlcpy(info->type, client_name, I2C_NAME_SIZE);
+	stracpy(info->type, client_name);
 
 	return 0;
 
diff -u -p a/drivers/net/ethernet/qlogic/qede/qede_main.c b/drivers/net/ethernet/qlogic/qede/qede_main.c
--- a/drivers/net/ethernet/qlogic/qede/qede_main.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_main.c
@@ -1094,7 +1094,7 @@ static int __qede_probe(struct pci_dev *
 	sp_params.drv_minor = QEDE_MINOR_VERSION;
 	sp_params.drv_rev = QEDE_REVISION_VERSION;
 	sp_params.drv_eng = QEDE_ENGINEERING_VERSION;
-	strlcpy(sp_params.name, "qede LAN", QED_DRV_VER_STR_SIZE);
+	stracpy(sp_params.name, "qede LAN");
 	rc = qed_ops->common->slowpath_start(cdev, &sp_params);
 	if (rc) {
 		pr_notice("Cannot start slowpath\n");
diff -u -p a/net/l2tp/l2tp_eth.c b/net/l2tp/l2tp_eth.c
--- a/net/l2tp/l2tp_eth.c
+++ b/net/l2tp/l2tp_eth.c
@@ -328,7 +328,7 @@ static int l2tp_eth_create(struct net *n
 		return rc;
 	}
 
-	strlcpy(session->ifname, dev->name, IFNAMSIZ);
+	stracpy(session->ifname, dev->name);
 	rcu_assign_pointer(spriv->dev, dev);
 
 	rtnl_unlock();
diff -u -p a/drivers/hwmon/lm80.c b/drivers/hwmon/lm80.c
--- a/drivers/hwmon/lm80.c
+++ b/drivers/hwmon/lm80.c
@@ -586,7 +586,7 @@ static int lm80_detect(struct i2c_client
 		name = "lm80";
 	}
 
-	strlcpy(info->type, name, I2C_NAME_SIZE);
+	stracpy(info->type, name);
 
 	return 0;
 }
diff -u -p a/drivers/thermal/thermal_hwmon.c b/drivers/thermal/thermal_hwmon.c
--- a/drivers/thermal/thermal_hwmon.c
+++ b/drivers/thermal/thermal_hwmon.c
@@ -141,7 +141,7 @@ int thermal_add_hwmon_sysfs(struct therm
 		return -ENOMEM;
 
 	INIT_LIST_HEAD(&hwmon->tz_list);
-	strlcpy(hwmon->type, tz->type, THERMAL_NAME_LENGTH);
+	stracpy(hwmon->type, tz->type);
 	strreplace(hwmon->type, '-', '_');
 	hwmon->device = hwmon_device_register_with_info(&tz->device, hwmon->type,
 							hwmon, NULL, NULL);
diff -u -p a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -4850,7 +4850,7 @@ amdgpu_dm_create_common_mode(struct drm_
 	mode->hdisplay = hdisplay;
 	mode->vdisplay = vdisplay;
 	mode->type &= ~DRM_MODE_TYPE_PREFERRED;
-	strscpy(mode->name, name, DRM_DISPLAY_MODE_LEN);
+	stracpy(mode->name, name);
 
 	return mode;
 
diff -u -p a/include/rdma/rdma_vt.h b/include/rdma/rdma_vt.h
--- a/include/rdma/rdma_vt.h
+++ b/include/rdma/rdma_vt.h
@@ -486,7 +486,7 @@ static inline void rvt_set_ibdev_name(st
 	 * to work by setting the name manually here.
 	 */
 	dev_set_name(&rdi->ibdev.dev, fmt, name, unit);
-	strlcpy(rdi->ibdev.name, dev_name(&rdi->ibdev.dev), IB_DEVICE_NAME_MAX);
+	stracpy(rdi->ibdev.name, dev_name(&rdi->ibdev.dev));
 }
 
 /**
diff -u -p a/drivers/media/usb/dvb-usb/cxusb.c b/drivers/media/usb/dvb-usb/cxusb.c
--- a/drivers/media/usb/dvb-usb/cxusb.c
+++ b/drivers/media/usb/dvb-usb/cxusb.c
@@ -1406,7 +1406,7 @@ static int cxusb_mygica_t230_frontend_at
 	si2168_config.ts_mode = SI2168_TS_PARALLEL;
 	si2168_config.ts_clock_inv = 1;
 	memset(&info, 0, sizeof(struct i2c_board_info));
-	strscpy(info.type, "si2168", I2C_NAME_SIZE);
+	stracpy(info.type, "si2168");
 	info.addr = 0x64;
 	info.platform_data = &si2168_config;
 	request_module(info.type);
@@ -1426,7 +1426,7 @@ static int cxusb_mygica_t230_frontend_at
 	si2157_config.fe = adap->fe_adap[0].fe;
 	si2157_config.if_port = 1;
 	memset(&info, 0, sizeof(struct i2c_board_info));
-	strscpy(info.type, "si2157", I2C_NAME_SIZE);
+	stracpy(info.type, "si2157");
 	info.addr = 0x60;
 	info.platform_data = &si2157_config;
 	request_module(info.type);
diff -u -p a/drivers/scsi/bfa/bfa_fcs.c b/drivers/scsi/bfa/bfa_fcs.c
--- a/drivers/scsi/bfa/bfa_fcs.c
+++ b/drivers/scsi/bfa/bfa_fcs.c
@@ -761,8 +761,7 @@ bfa_fcs_fabric_psymb_init(struct bfa_fcs
 	bfa_ioc_get_adapter_model(&fabric->fcs->bfa->ioc, model);
 
 	/* Model name/number */
-	strlcpy(port_cfg->sym_name.symname, model,
-		BFA_SYMNAME_MAXLEN);
+	stracpy(port_cfg->sym_name.symname, model);
 	strlcat(port_cfg->sym_name.symname, BFA_FCS_PORT_SYMBNAME_SEPARATOR,
 		BFA_SYMNAME_MAXLEN);
 
@@ -822,8 +821,7 @@ bfa_fcs_fabric_nsymb_init(struct bfa_fcs
 	bfa_ioc_get_adapter_model(&fabric->fcs->bfa->ioc, model);
 
 	/* Model name/number */
-	strlcpy(port_cfg->node_sym_name.symname, model,
-		BFA_SYMNAME_MAXLEN);
+	stracpy(port_cfg->node_sym_name.symname, model);
 	strlcat(port_cfg->node_sym_name.symname,
 			BFA_FCS_PORT_SYMBNAME_SEPARATOR,
 			BFA_SYMNAME_MAXLEN);
diff -u -p a/drivers/hwmon/amc6821.c b/drivers/hwmon/amc6821.c
--- a/drivers/hwmon/amc6821.c
+++ b/drivers/hwmon/amc6821.c
@@ -809,7 +809,7 @@ static int amc6821_detect(
 	}
 
 	dev_info(&adapter->dev, "amc6821: chip found at 0x%02x.\n", address);
-	strlcpy(info->type, "amc6821", I2C_NAME_SIZE);
+	stracpy(info->type, "amc6821");
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/w83791d.c b/drivers/hwmon/w83791d.c
--- a/drivers/hwmon/w83791d.c
+++ b/drivers/hwmon/w83791d.c
@@ -1349,7 +1349,7 @@ static int w83791d_detect(struct i2c_cli
 	if (val1 != 0x71 || val2 != 0x5c)
 		return -ENODEV;
 
-	strlcpy(info->type, "w83791d", I2C_NAME_SIZE);
+	stracpy(info->type, "w83791d");
 
 	return 0;
 }
diff -u -p a/drivers/s390/char/tape_class.c b/drivers/s390/char/tape_class.c
--- a/drivers/s390/char/tape_class.c
+++ b/drivers/s390/char/tape_class.c
@@ -54,10 +54,10 @@ struct tape_class_device *register_tape_
 	if (!tcd)
 		return ERR_PTR(-ENOMEM);
 
-	strlcpy(tcd->device_name, device_name, TAPECLASS_NAME_LEN);
+	stracpy(tcd->device_name, device_name);
 	for (s = strchr(tcd->device_name, '/'); s; s = strchr(s, '/'))
 		*s = '!';
-	strlcpy(tcd->mode_name, mode_name, TAPECLASS_NAME_LEN);
+	stracpy(tcd->mode_name, mode_name);
 	for (s = strchr(tcd->mode_name, '/'); s; s = strchr(s, '/'))
 		*s = '!';
 
diff -u -p a/drivers/hwmon/adm1029.c b/drivers/hwmon/adm1029.c
--- a/drivers/hwmon/adm1029.c
+++ b/drivers/hwmon/adm1029.c
@@ -329,7 +329,7 @@ static int adm1029_detect(struct i2c_cli
 		return -ENODEV;
 	}
 
-	strlcpy(info->type, "adm1029", I2C_NAME_SIZE);
+	stracpy(info->type, "adm1029");
 
 	return 0;
 }
diff -u -p a/drivers/media/pci/smipcie/smipcie-main.c b/drivers/media/pci/smipcie/smipcie-main.c
--- a/drivers/media/pci/smipcie/smipcie-main.c
+++ b/drivers/media/pci/smipcie/smipcie-main.c
@@ -540,7 +540,7 @@ static int smi_dvbsky_m88ds3103_fe_attac
 	}
 	/* attach tuner */
 	ts2020_config.fe = port->fe;
-	strscpy(tuner_info.type, "ts2020", I2C_NAME_SIZE);
+	stracpy(tuner_info.type, "ts2020");
 	tuner_info.addr = 0x60;
 	tuner_info.platform_data = &ts2020_config;
 	tuner_client = smi_add_i2c_client(tuner_i2c_adapter, &tuner_info);
@@ -596,7 +596,7 @@ static int smi_dvbsky_m88rs6000_fe_attac
 	}
 	/* attach tuner */
 	m88rs6000t_config.fe = port->fe;
-	strscpy(tuner_info.type, "m88rs6000t", I2C_NAME_SIZE);
+	stracpy(tuner_info.type, "m88rs6000t");
 	tuner_info.addr = 0x21;
 	tuner_info.platform_data = &m88rs6000t_config;
 	tuner_client = smi_add_i2c_client(tuner_i2c_adapter, &tuner_info);
@@ -638,7 +638,7 @@ static int smi_dvbsky_sit2_fe_attach(str
 	si2168_config.ts_mode = SI2168_TS_PARALLEL;
 
 	memset(&client_info, 0, sizeof(struct i2c_board_info));
-	strscpy(client_info.type, "si2168", I2C_NAME_SIZE);
+	stracpy(client_info.type, "si2168");
 	client_info.addr = 0x64;
 	client_info.platform_data = &si2168_config;
 
@@ -655,7 +655,7 @@ static int smi_dvbsky_sit2_fe_attach(str
 	si2157_config.if_port = 1;
 
 	memset(&client_info, 0, sizeof(struct i2c_board_info));
-	strscpy(client_info.type, "si2157", I2C_NAME_SIZE);
+	stracpy(client_info.type, "si2157");
 	client_info.addr = 0x60;
 	client_info.platform_data = &si2157_config;
 
diff -u -p a/drivers/net/ethernet/marvell/octeontx2/af/rvu.c b/drivers/net/ethernet/marvell/octeontx2/af/rvu.c
--- a/drivers/net/ethernet/marvell/octeontx2/af/rvu.c
+++ b/drivers/net/ethernet/marvell/octeontx2/af/rvu.c
@@ -2367,8 +2367,8 @@ static void rvu_update_module_params(str
 {
 	const char *default_pfl_name = "default";
 
-	strscpy(rvu->mkex_pfl_name,
-		mkex_profile ? mkex_profile : default_pfl_name, MKEX_NAME_LEN);
+	stracpy(rvu->mkex_pfl_name,
+		mkex_profile ? mkex_profile : default_pfl_name);
 }
 
 static int rvu_probe(struct pci_dev *pdev, const struct pci_device_id *id)
diff -u -p a/drivers/platform/x86/i2c-multi-instantiate.c b/drivers/platform/x86/i2c-multi-instantiate.c
--- a/drivers/platform/x86/i2c-multi-instantiate.c
+++ b/drivers/platform/x86/i2c-multi-instantiate.c
@@ -91,7 +91,7 @@ static int i2c_multi_inst_probe(struct p
 
 	for (i = 0; i < multi->num_clients && inst_data[i].type; i++) {
 		memset(&board_info, 0, sizeof(board_info));
-		strlcpy(board_info.type, inst_data[i].type, I2C_NAME_SIZE);
+		stracpy(board_info.type, inst_data[i].type);
 		snprintf(name, sizeof(name), "%s-%s.%d", match->id,
 			 inst_data[i].type, i);
 		board_info.dev_name = name;
diff -u -p a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
--- a/drivers/staging/greybus/audio_module.c
+++ b/drivers/staging/greybus/audio_module.c
@@ -341,7 +341,7 @@ static int gb_audio_probe(struct gb_bund
 	/* inform above layer for uevent */
 	dev_dbg(dev, "Inform set_event:%d to above layer\n", 1);
 	/* prepare for the audio manager */
-	strlcpy(desc.name, gbmodule->name, GB_AUDIO_MANAGER_MODULE_NAME_LEN);
+	stracpy(desc.name, gbmodule->name);
 	desc.vid = 2; /* todo */
 	desc.pid = 3; /* todo */
 	desc.intf_id = gbmodule->dev_id;
diff -u -p a/drivers/hwmon/fschmd.c b/drivers/hwmon/fschmd.c
--- a/drivers/hwmon/fschmd.c
+++ b/drivers/hwmon/fschmd.c
@@ -1075,7 +1075,7 @@ static int fschmd_detect(struct i2c_clie
 	else
 		return -ENODEV;
 
-	strlcpy(info->type, fschmd_id[kind].name, I2C_NAME_SIZE);
+	stracpy(info->type, fschmd_id[kind].name);
 
 	return 0;
 }
diff -u -p a/fs/orangefs/orangefs-utils.c b/fs/orangefs/orangefs-utils.c
--- a/fs/orangefs/orangefs-utils.c
+++ b/fs/orangefs/orangefs-utils.c
@@ -335,9 +335,8 @@ again2:
 		if (flags & ORANGEFS_GETATTR_NEW) {
 			inode->i_size = (loff_t)strlen(new_op->
 			    downcall.resp.getattr.link_target);
-			ret = strscpy(orangefs_inode->link_target,
-			    new_op->downcall.resp.getattr.link_target,
-			    ORANGEFS_NAME_MAX);
+			ret = stracpy(orangefs_inode->link_target,
+			    new_op->downcall.resp.getattr.link_target);
 			if (ret == -E2BIG) {
 				ret = -EIO;
 				goto out_unlock;
diff -u -p a/drivers/hwmon/adm1021.c b/drivers/hwmon/adm1021.c
--- a/drivers/hwmon/adm1021.c
+++ b/drivers/hwmon/adm1021.c
@@ -411,7 +411,7 @@ static int adm1021_detect(struct i2c_cli
 
 	pr_debug("Detected chip %s at adapter %d, address 0x%02x.\n",
 		 type_name, i2c_adapter_id(adapter), client->addr);
-	strlcpy(info->type, type_name, I2C_NAME_SIZE);
+	stracpy(info->type, type_name);
 
 	return 0;
 }
diff -u -p a/drivers/hwmon/max6642.c b/drivers/hwmon/max6642.c
--- a/drivers/hwmon/max6642.c
+++ b/drivers/hwmon/max6642.c
@@ -148,7 +148,7 @@ static int max6642_detect(struct i2c_cli
 	if ((reg_status & 0x2b) != 0x00)
 		return -ENODEV;
 
-	strlcpy(info->type, "max6642", I2C_NAME_SIZE);
+	stracpy(info->type, "max6642");
 
 	return 0;
 }
diff -u -p a/drivers/media/pci/ivtv/ivtv-i2c.c b/drivers/media/pci/ivtv/ivtv-i2c.c
--- a/drivers/media/pci/ivtv/ivtv-i2c.c
+++ b/drivers/media/pci/ivtv/ivtv-i2c.c
@@ -206,7 +206,7 @@ static int ivtv_i2c_new_ir(struct ivtv *
 
 	memset(&info, 0, sizeof(struct i2c_board_info));
 	info.platform_data = init_data;
-	strscpy(info.type, type, I2C_NAME_SIZE);
+	stracpy(info.type, type);
 
 	return i2c_new_probed_device(adap, &info, addr_list, NULL) == NULL ?
 	       -1 : 0;
@@ -234,7 +234,7 @@ struct i2c_client *ivtv_i2c_new_ir_legac
 	};
 
 	memset(&info, 0, sizeof(struct i2c_board_info));
-	strscpy(info.type, "ir_video", I2C_NAME_SIZE);
+	stracpy(info.type, "ir_video");
 	return i2c_new_probed_device(&itv->i2c_adap, &info, addr_list, NULL);
 }
 
diff -u -p a/drivers/usb/wusbcore/cbaf.c b/drivers/usb/wusbcore/cbaf.c
--- a/drivers/usb/wusbcore/cbaf.c
+++ b/drivers/usb/wusbcore/cbaf.c
@@ -289,7 +289,7 @@ static int cbaf_cdid_get(struct cbaf *cb
 		return -ENOENT;
 	}
 
-	strlcpy(cbaf->device_name, di->DeviceFriendlyName, CBA_NAME_LEN);
+	stracpy(cbaf->device_name, di->DeviceFriendlyName);
 	cbaf->cdid = di->CDID;
 	cbaf->device_band_groups = le16_to_cpu(di->BandGroups);
 

--=-UN73uR7ID00gITZ0Aqnl--

