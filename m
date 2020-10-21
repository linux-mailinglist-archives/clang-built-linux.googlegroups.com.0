Return-Path: <clang-built-linux+bncBCH6BRHDXYLRBFNEX36AKGQE54VBQSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 94958294656
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 03:42:46 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id 77sf232586uac.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 18:42:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603244565; cv=pass;
        d=google.com; s=arc-20160816;
        b=R36Wck+8m9Yqe7ItPQF/IKd+Adq94V9MW5bplwYDA2JQYiKHBPV8IrCIWFmtt04g2B
         05SwS9J9GhL0XTgkjxz0L7rp8uJP3F23Xc3k6RQmzIL+cAUv1RdxE4bdD8VCXrF3AnkB
         svFqQtFzRccCfxZDzpFm5Sg1tUfCPCshfTe6YiufufuX46OztQCfJF0EtbVGiGOYINyJ
         3yWRlY8BunNueDcepV/9c1fRbzXgL86CMKxqro6OsMwDeYLw6PpCwk+1kP8ctFx5fWoD
         NrkhIF0K5jvHaQX7J9k7rvScjeQF1RHKK42/3XMsoaFzgOZO3QDGOxAXP1WHbxwAsFFJ
         Dnyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :from:date:sender:dkim-signature;
        bh=+ki8kVYM6m3pTxJlO1eqFtT1sNV5vE314cCy+/V6nME=;
        b=U7xDJ02lPvMSm29yycaGP06U8z0v0ju02+Qx8VRhGB8P8YG7dN5e41UqJbVhoCA/97
         6bS6Fer7p0nfbc6rkSM0ViR4tUV7xTp+ZcJdSYgpqnJrSlFq4q+vtXd+Bp1hlIW5pnd/
         Ar+nx1Anoxr46lPEveHWQ5pBysFnKmCR7mALf1jW8vfdgKgnfO89XbTPvHFMg/c0wa8W
         2U6lINunO46g9fcQ0jDIjCvG2Is7N8uweYtSQ7tyq/R/3FhTBdR6EfdGa6AVy/WpfiLS
         DNUVTc13yh58Jfmg32dpfT+P+0sa5ViH2ezngqJUEVkARhau9+BcwzJOtq9dVKkRaNPQ
         z0PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KiaPJV2y;
       spf=pass (google.com: domain of tstellar@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+ki8kVYM6m3pTxJlO1eqFtT1sNV5vE314cCy+/V6nME=;
        b=c5CMrA+5+pLwI8eVSze9yULIVP0NwSYiZ20Dz/9oLUET9bMGQrIaMbRLgakb61IMdo
         8P4+QuC11NOtqFQV1a6zEShnC7SYRbNSrmTNIXq9mHys9H0b36QpE7ikDlDvJYi+8G7d
         XFHXt2IJ9ILKBI2T6Vk7oBmFAsgJaX9Keg5VrFUOyUV2mxs8ml42TCZllNdLsMhCGcVp
         glQmwp3lMqc74kJ6sZtdSCYbiB7OvGoNerZuxehV9wgKtwWLBSLXD2CowBmCdOMd+5vC
         aTRtQHwh2Gfr+RLE6AFYTKSsOs8C9bBm4SUKf1Wcy2cIaIS80pDcTHQK9oVGPGlaODup
         STdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+ki8kVYM6m3pTxJlO1eqFtT1sNV5vE314cCy+/V6nME=;
        b=gMKnbwYP+CNpciSQJfqSqA5oI0rr8Hg6iPut30Xp850IGBy2HiVlkMNZnaQdR+SkL7
         4uf3PJb6jmARp+CgDwNRVfEuBrr7Ps5K1W0C/7tDZev4QG3tdTlf7j36KaJiEmlo3dpQ
         o7BLnuF74b5hXFlDsb+Zur6ZYz7kDdUrvYg+5bTAabSllHGqTaRNz0t7+x62YonmKsjn
         3PruJtoyuYPDFVN3ELOYt7e++kguVwdDbP+PKYD4E+xhpp6i5qIDf2SWs4044PvcHIQU
         HB3rAlk46wWlNBWObuRIMpQpjYUGjjW/0idGUUQz54ktMP9HvgpVU31KbGRHQxd1Btfp
         7Dlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ILdV6LfZQKWSkdD5QMOlRq/LIDKjZIXck5gemebD1LgPNfO3s
	aZOoexoc54zw9Fe3Qv2sp/0=
X-Google-Smtp-Source: ABdhPJxdGLl2U7KuGl+tcpVqCj/2niYevFgR2BXegQvPxDsMf/UcnpvkwA9l1V3yXs0FSWPFkd7gMg==
X-Received: by 2002:ab0:7496:: with SMTP id n22mr551731uap.29.1603244565455;
        Tue, 20 Oct 2020 18:42:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:68d8:: with SMTP id d207ls538735vsc.7.gmail; Tue, 20 Oct
 2020 18:42:44 -0700 (PDT)
X-Received: by 2002:a05:6102:7a3:: with SMTP id x3mr353769vsg.12.1603244564900;
        Tue, 20 Oct 2020 18:42:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603244564; cv=none;
        d=google.com; s=arc-20160816;
        b=hlZvV5zlybFO2jyJYz0hqPKxsTIgop0iPMjAa/SVXn6es6NUlPkTkp2PF19VjFdfdz
         RtPSgS3xr2kWyc7IiAi59EZuT86YrYMVWpyUWKjgx5z6csAdpNyVKFEViwiacHMZQvHu
         wCb0rRftfoLegnam5TgmtHXeJ3AI9bhnufcShLX8XV7RWS89I0IB+e5RGkMmt/mwHXYW
         XMHh/w93Y6AbVrYbdIjpGTQkU7aARzXwKe6JMcqsxCL37HLpvehuVKLuTVoj2uFTXDtq
         ZLhsQF4IfG/8m0dsheopyMuFqQ8qCV7z0J2Lla8IVbhw1e/UNcn5YaPetP2JDciBcPar
         K0tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:from:date:dkim-signature;
        bh=o2OyHA9frIbtZh4JYCL+UXtnsWSPzX2PDLBm6zk7xdU=;
        b=PNEYE4Lj3DRxM4E0eXSv1KRhhY/5YdY8F9upisqG+Fy0v+4fYMC/bW8vyfqLu1+8jv
         E4tO75U0xGYoF1cdTgDiXvkbhFm0hpQRoINQyZWtMeUQO1Es92kbyN9U8HDB/PKR+KbB
         pGaDYDK342svdMT/whiyGIYCWM5HrcKslKi9Dx1QIkdGeRJX5RDWjULTpBEmAVNkgsa8
         pOUJtyc8HEH4A0SBBFtrGLivag0eB0og8xb1iH8mUJrU6Mh78Iinje/p0fpIaBFYFlM/
         NPrRzoaLy+ExszoUNXXUB30HgifHV0dqex50X33qb/EhE9lzTSX05FiUxAxXM/yE24G1
         /r3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KiaPJV2y;
       spf=pass (google.com: domain of tstellar@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id r131si35663vkd.0.2020.10.20.18.42.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 18:42:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of tstellar@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-z_H_YN27OnihQevPGQu8HQ-1; Tue, 20 Oct 2020 21:42:41 -0400
X-MC-Unique: z_H_YN27OnihQevPGQu8HQ-1
Received: by mail-oo1-f71.google.com with SMTP id g8so419180oon.13
        for <clang-built-linux@googlegroups.com>; Tue, 20 Oct 2020 18:42:41 -0700 (PDT)
X-Received: by 2002:aca:4a04:: with SMTP id x4mr554068oia.133.1603244561236;
        Tue, 20 Oct 2020 18:42:41 -0700 (PDT)
X-Received: by 2002:aca:4a04:: with SMTP id x4mr554062oia.133.1603244561031;
        Tue, 20 Oct 2020 18:42:41 -0700 (PDT)
Date: Tue, 20 Oct 2020 18:42:40 -0700 (PDT)
From: Tom Stellard <tstellar@redhat.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <9263a93d-bbaf-451f-9c2d-369351a3ee76n@googlegroups.com>
Subject: Userspace coordination on ClangBuiltLinux GitHub space
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_728_694985956.1603244560158"
X-Original-Sender: tstellar@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KiaPJV2y;
       spf=pass (google.com: domain of tstellar@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

------=_Part_728_694985956.1603244560158
Content-Type: multipart/alternative; 
	boundary="----=_Part_729_1876678996.1603244560158"

------=_Part_729_1876678996.1603244560158
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm working on doing builds of  Fedora packages using clang, and I'm trying 
to find a way to coordinate this work with other distributions so that we 
aren't all fixing the same bugs.  I would like to create a GitHub repo for 
storing build-fix patches and also tracking issues for userspace projects.

I could create a new GitHub organization for this, but I wanted to see if 
this community would be interested in hosting something like this in the 
ClangBuiltLinux organization.

I don't have a strong preference either way, but it seems like there could 
be some benefits of sharing a space for this with the ongoing linux kernel 
work.

Thanks,
Tom




-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9263a93d-bbaf-451f-9c2d-369351a3ee76n%40googlegroups.com.

------=_Part_729_1876678996.1603244560158
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div><div><br></div><div>I'm working on doing builds of&nbsp; Fedo=
ra packages using clang, and I'm trying to find a way to coordinate this wo=
rk with other distributions so that we aren't all fixing the same bugs.&nbs=
p; I would like to create a GitHub repo for storing build-fix patches and a=
lso tracking issues for userspace projects.</div><div><br></div><div>I coul=
d create a new GitHub organization for this, but I wanted to see if this co=
mmunity would be interested in hosting something like this in the ClangBuil=
tLinux organization.<br></div><div><br></div><div>I don't have a strong pre=
ference either way, but it seems like there could be some benefits of shari=
ng a space for this with the ongoing linux kernel work.</div><div></div><di=
v><br></div><div>Thanks,</div><div>Tom<br></div><div><br></div><div><br></d=
iv><div><br></div><div><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/9263a93d-bbaf-451f-9c2d-369351a3ee76n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/9263a93d-bbaf-451f-9c2d-369351a3ee76n%40googleg=
roups.com</a>.<br />

------=_Part_729_1876678996.1603244560158--

------=_Part_728_694985956.1603244560158--

