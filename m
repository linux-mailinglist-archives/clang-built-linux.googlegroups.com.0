Return-Path: <clang-built-linux+bncBDLIXLMFVAERBYU4WXXAKGQE3WJCAOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E588DFC698
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Nov 2019 13:53:54 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id 4sf4379104wrf.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Nov 2019 04:53:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573736034; cv=pass;
        d=google.com; s=arc-20160816;
        b=vKKqy9/Gaf/6ViS3EbxpUvoaVu/5AYqruHv8IumgMxe6kl8DLvY6IWGcbMrryLuSQH
         sKfjnRqLuJqrnR+kVOL4olNOd3vxVouNaq8hgSAlHljqglOXvjmJonNFSI+pWHivARDd
         jw5pYjTyHxd6eZZHEv+wI8TwR9MLqqKBxHBHQEk45TEHaF0ktehgYXwyUc1QDqgzxb4q
         AJEGdc7uTDIbJTmNY4PZgmro0Rwo4fToX1Xr5cHehmLQwghv393pCtYp8Abt3ggIXFNe
         xZyi6sZklVDmw1mK5deLUIBPgfimXCTILPR8+GR1KDOZZBCaVWpwJ3L09ZQr3YpTfTyJ
         fSwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:content-id
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :sender:dkim-signature;
        bh=bEHcimhkgwi9AqHuoD6W3DDcNcIKXw+YPL6IH9LRc1E=;
        b=Fn7P/9iwDFI1y9QzilNBjT3oimTsCMBX8K7gEwfsT8upD1C5mGPWgaJhT5/T5aS0bh
         P++C9cN/M5ElRktGYidsa47THyr0eHc25L92rHJZB1Q/Q2MSphjfp4pjdSbvS6jY3CIi
         hFJRBO5ikw3N68HU6xqNs+/0nHuvxIkF2/9+PrCFXvoBg1ZXZhsdQ6sTfusXtRBCjwvp
         xvHGY9k1Clr5z2atysVc5mYWDT4R8sPzaMEy2BA2ms2VNS/IFsxDW1TmEBnNsbZ7epWQ
         RCXDuuMeGD5T1Q3nJBZy2AXxjOLyWaV/uTbpYXjaLMnetLK/b6ZD/YDF5i1BecZoy6R5
         65LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="F3d/yOkH";
       spf=pass (google.com: domain of dhowells@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:organization:from:in-reply-to:references:to:cc:subject
         :mime-version:content-id:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bEHcimhkgwi9AqHuoD6W3DDcNcIKXw+YPL6IH9LRc1E=;
        b=MDLXv+BOIYhpTfyRLc5hlSTfCYxdqx5uMZSumouGJlxXiwJwZnHZLf13bnBsHI+XE4
         W3Ba6E5lkGLLYpCFw4xU/XWsdBq25SRPfAprzHIAhR5uo3fszjMVX61MxXxVwZ1190IN
         oQoEXRtGrz7G57Ij7t2+fc5DVP0lz3iEMUrKqWv80E11BFKWaPdUNSIPZ5XI9gsdeM9N
         DOGvpAyCG97MNtBCQi/Woam4Mq2hP2A48U8f26bomdbnb9LoA5xuGsU1QyaOX7AZrPXN
         7WSVyhUSQKQxHAiQOMrJMjKkDpNfCPj6G8HS/jItinurDewvrnxh0koNNWStHbapHomw
         XlkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:organization:from:in-reply-to:references
         :to:cc:subject:mime-version:content-id:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bEHcimhkgwi9AqHuoD6W3DDcNcIKXw+YPL6IH9LRc1E=;
        b=TrcEunNlkQTua4LNh8GCvCx49mRLEokLn8kbpcmaE1mPECf/CanQgqcf5s2i473xeW
         CeMei+W1FNEtGEjULWU2RWQGiCfD0Vk5hZEZpo2d8jQ0MGzHnX7yKl2PHJb3L6DqNc5P
         kMOlTQL7ewDJb/+0vTDLiWzIC+ZMJ4Te7uXsgXYum9ZKOzgJAqaInKmIg+/OFgQHuHid
         KqWDlLSSH0d87RaapVg1oAsVgZ87nO0tDbVDcbL61JTlpjMUMLxQa85Xdbb5fmScdRd6
         gV9gk+kCxh1QEZJ5pyIK+edbsNJCEf0Td+zHgQ6aMggabfRALLUv4cyPyzO+mHPcrRoU
         s8rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUGLIG9lcDDGtZEUik7D997z/Ft7KMEGp3usnGsoWKqa2mZpRC9
	/54OeApLyHlVyYlueEG6vG4=
X-Google-Smtp-Source: APXvYqx29SbJOq+lkL5UnVIZ3HPBE9e2TqQKz/7dQcyJAu2bcb/A4+CNil/ixp+VOSE27mU3dDGAjA==
X-Received: by 2002:a1c:8086:: with SMTP id b128mr7713523wmd.104.1573736034575;
        Thu, 14 Nov 2019 04:53:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5284:: with SMTP id c4ls7972058wrv.15.gmail; Thu, 14 Nov
 2019 04:53:54 -0800 (PST)
X-Received: by 2002:a05:6000:354:: with SMTP id e20mr8858299wre.17.1573736034120;
        Thu, 14 Nov 2019 04:53:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573736034; cv=none;
        d=google.com; s=arc-20160816;
        b=W/22JxNoCykk0ayYPTsChYV4rhfg/Y+MV6JdsJ1SQTZ39iv/whRN8JwDq6W94Xtye/
         B8EYkhAZSgzmZYucSDI9sktOWZuShQDvO0Ouli3ZIIPHKZb0slrCh1CfmMB+jmEzwt9C
         /XeT46OQc+xW8wjnk0gR81x4kmKKgovwPZNSMHabwtlhkdlVamfVVRkHY+i7asw1uq5a
         tU60uzxJgb8VpjpAc65mNNsQt3rt/ejhTlpxzAsqTRdxwct30zaNqPtaunj8pymy4D5C
         uI95EEkFc2DIN/rhzct6FxuUjCCtUxlv0elagbJ39dmkDcvv/RzGXNTl1MTMGFIta5NU
         wwGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:date:content-id:mime-version
         :subject:cc:to:references:in-reply-to:from:organization
         :dkim-signature;
        bh=oJg2wW+njFiWElCvNFHhA30RDeQd1DrYSLIV6hz+Q9s=;
        b=dan+O/K/4stP8Vr2G0RoivcwAUni2UbS0wpGyuZ+zOdr5yYT4DaGsPB0yq94qvDvuu
         nu7AzUBSgUz7SogIlgw/LmOCDTylHuhC/OVEFuQ7+SBSUstJfDwWkmSzxSaDZMF4tflv
         YY2uE/GwDGU4iJ8tnVnYNzBbxUXfiLfyifUiU9a+2W6aioNNJp2H34aPmQj31hgS1o/B
         iACK5Ue5I4tB3lXr22Wk5UHteQi6YpamlBlRRN0YzOv5h/i2e9niChpML5rNeEGUdO/T
         mdA9EzK+2z/R2UP2HsblMymVPd4dDpKt8I/sYJNVhVxlodQNHWHvHNtdXcpWFEEWmd0K
         0uCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="F3d/yOkH";
       spf=pass (google.com: domain of dhowells@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id q128si401216wme.1.2019.11.14.04.53.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Nov 2019 04:53:54 -0800 (PST)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-115-cEAGLzgAPmOj2QYNcC70pA-1; Thu, 14 Nov 2019 07:53:51 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2CDEA805E60;
	Thu, 14 Nov 2019 12:53:50 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-120-254.rdu2.redhat.com [10.10.120.254])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 13BC819757;
	Thu, 14 Nov 2019 12:53:48 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAKwvOdm7Ydt4D4F6se3VOVtgwbL6+=zHBYr0b_16Nvf3dSpRPA@mail.gmail.com>
References: <CAKwvOdm7Ydt4D4F6se3VOVtgwbL6+=zHBYr0b_16Nvf3dSpRPA@mail.gmail.com> <201911140105.a5aulJde%lkp@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: dhowells@redhat.com, kbuild@lists.01.org,
    clang-built-linux <clang-built-linux@googlegroups.com>,
    kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org
Subject: Re: [dhowells-fs:fscache-iter 23/33] fs/fscache/read_helper.c:258:2: warning: variable 'x_flags' is uninitialized when used here
MIME-Version: 1.0
Content-ID: <25600.1573736028.1@warthog.procyon.org.uk>
Date: Thu, 14 Nov 2019 12:53:48 +0000
Message-ID: <25601.1573736028@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: cEAGLzgAPmOj2QYNcC70pA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="F3d/yOkH";
       spf=pass (google.com: domain of dhowells@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
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

Nick Desaulniers <ndesaulniers@google.com> wrote:

> Hi David, 0day bot flagged this from a Clang build. Warning looks
> legit, can you please take a look?

Yep.  I'm not sure why my compiler doesn't report these.

> > >> fs/fscache/read_helper.c:258:2: warning: variable 'x_flags' is uninitialized when used here [-Wuninitialized]
> >            x_flags |= fscache_shape_extent(req->io_handle, extent, i_size, false);

This should be "=" not "|=" and I've amended it accordingly, thanks.

David

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/25601.1573736028%40warthog.procyon.org.uk.
