Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB4EB335AKGQEGKLO4UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2A42611BA
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 15:02:41 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id r2sf7558243pga.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 06:02:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599570160; cv=pass;
        d=google.com; s=arc-20160816;
        b=FOU0LLHBjx0VM1bqtKtGlQKiaLjphnHDgRlM/Qr+l+SMYBgAgy9SuU/sEbf3ICW3vi
         V+GVAv6DeLOmsjjj8DSikzw1HjM3XePZbV9NirFR2bJPKOtmgZ7xqrI4l/c8MDSy6Io8
         o4h2LapGBuPAju0Q5DO0olp2TgtjdpCUMK3/ucJXrzexIDYZTvrytiI5WrmCI66CP6mb
         GKkQ0trQfls8OJr9ewZ+cVKvTvzcugGF3JnmmCO7LZ21Fb2KZRuF2p2pPiIpe8mJPZp1
         k8QkfyWhkbvMUpLbe5CuQDHpA31r7Rh7zH5BDFBUMajQ6zrmkJh7iUEtG0nj6ENURJeu
         t0Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ohAcfkEZ9UTgb3MhrYqS43L7Jj2q/wqcWXLCPdt2NO4=;
        b=fVmIRkc8Xrr9Xi6WqIDCFxLml/6tMWtsg176MurKPGswMFl7TsCruTAg2tzZ4MsCGN
         CNM5fsyaarzXzdfje2Cgls8/+XGLy2AhQsgeItMq/umxPGM+xWIN00lKQ0oOSYFJX2uU
         EFECRom5Vr+mFZeod8TSbGa6GAyNYcZzhyJFP/yfTaWRoExBX4nx4F7k/Z4UHlWpvAOl
         O04TpjlKJjdTLFrccgCtTg+yYf44K0Sv8jjRrKpRARF2GuNCZmv0JgcDdDXKkZGn2mbv
         7rHlSYtUNSaddLIkYTmkhtOyCgNBzVuaJQjgPtYL6U7J91MTs5yrqAYV2O6FSHUhietp
         XYgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bfTULMsG;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ohAcfkEZ9UTgb3MhrYqS43L7Jj2q/wqcWXLCPdt2NO4=;
        b=D6YdA40hPONCKau/Gydpgzimn5IS1LFZ3CQGnXYshD9NcNmOmYWESrdX7JFkFfV8iz
         Qdn9m9jImbkZG0jhvB7KSH0jDZ7co4bzMhXgVeS9heIv6tLzUpc3Um9CZzTM8GLokXAP
         2WGxzLrMI3ZObN7HlZV76G1MtavRyRjR13AmIkgS6T+LedF+y2H01AvnsEc/7zSdwtmz
         V4kocGCAvtOBqcw8A2o6ILtMZkZyLoz+2+8Og+VIA6AU1bV1I/Of++Jg38R/QRJdaPZX
         KHTagCPLeb57V5Ilt2XWTbbX06ACDKZIXGAm+y0GPy7WPNCVFTJ/LJUHgu+SidzXvfGW
         t5kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ohAcfkEZ9UTgb3MhrYqS43L7Jj2q/wqcWXLCPdt2NO4=;
        b=pfF8wJ1Leg7S539EFr1IBDBLqmLm/iwJL9NpzFABqmhp145BSmqKvq+Se1b4xtka83
         43ekfV3DMIfKas0o5ChRCtEQdL/G/H45fZf0wbBOROA9mFx5Q7wwhSLRtZtt6sZT3inL
         ufw33E7sKbNAjF0WYf8fH5YDNZbncOLEO5w7efwl9b6EhhvZZr6YGP+TqtTXOsbyx8Kw
         BiRM5qiRvud2tgsofwPVEiz/6skhPTnuVKcDTW8hCwjPZYU+/XQYVhy/uRSb8J495C/S
         j/ackUfRzKknQG0Wa+mqeXOwsK7jWBpJL77qyPtKqhfI1ETD30OYiVm7/iiIC/L/L8zG
         3v0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533keYKSANI8Ua8z4X8TgKCY+0dCz2fLyGN+yn1D40udc1HhRm4d
	aAzfjfx1ugvthn6KDU+p90w=
X-Google-Smtp-Source: ABdhPJydS7LdKJ3du4tvqaT0th7wKr1rv9DO8S+wv6ZHsN5pQJIP8K/WXR9AeOORiAffHY9H1rL7xg==
X-Received: by 2002:a62:7c0f:: with SMTP id x15mr25077105pfc.7.1599570160491;
        Tue, 08 Sep 2020 06:02:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b4c:: with SMTP id g12ls9451899plt.7.gmail; Tue, 08
 Sep 2020 06:02:39 -0700 (PDT)
X-Received: by 2002:a17:902:7589:: with SMTP id j9mr5639241pll.168.1599570159509;
        Tue, 08 Sep 2020 06:02:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599570159; cv=none;
        d=google.com; s=arc-20160816;
        b=JwLGxwkBzi5Rejl4sYKvLJR6F5Y/gr6BdN+hU4CwczQrT7rh/eBOTRRy+01roK0oW6
         soGzmtS792r6+4rYuokW88uRpCaEQ+acpffQx4eNYZT/oKEgkJBO+jo8iyyp/tS5DbON
         rqeiMRzy4ysxb4sHeEB64NbPXuN9nE92SjYbqUkITizcf8muRInbjhvBN1F6eU2/H4sB
         iqfZMz/mlO0YvYITuO12cgeGdWqvIdhXD+9ATjUocteaDE0+bRYgMvtBOv9oFMa5YF7C
         AvZZv+DcAwykXahi22LI3qJBIBmeskCA4nfSr5rCsQwFtpyKkroRsZjfMt8MQtF1CdGv
         GaSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hWIQn4z/jkPoZc10SlwnruNvmIcZPDzy4F0zhdEBwzQ=;
        b=T/KeKrQ9FIeTETmaxi5B6uqFSDxA7NwVAZkab7o4RmTZpBP2CR4Gc0uV/VtpIBzpAf
         WrdEm3JcCypFbms3gdXh+GkqN3H+shvE6jk2QDvinXYR56lPzSwuQcEn9P5ga3Aa6Npc
         EEZrywKNQHguuZYuhmbazQ3ZtPVJLdrx6E1UyokmpV2E5HYYh2sg90OXz2V8RRCwc2Mw
         3Hc/ITB6GpYCYab1wSwugBeIWnK4ClncsaN0oYgQN8cPKbCYB2ceOo2YXiNRDDrRXaQ3
         9N3JoLj7ps7az22qowsM191x9aZc41vDalv9LLNisP3MGUZDgyJMzMrbI5QZHshIttVG
         7AzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bfTULMsG;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id lx5si82914pjb.2.2020.09.08.06.02.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 06:02:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-385-WLuQ4eLOOUWgpC0GLDneiQ-1; Tue, 08 Sep 2020 09:02:36 -0400
X-MC-Unique: WLuQ4eLOOUWgpC0GLDneiQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2C49107F207;
	Tue,  8 Sep 2020 13:02:35 +0000 (UTC)
Received: from treble (ovpn-117-163.rdu2.redhat.com [10.10.117.163])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D73CD5C5AF;
	Tue,  8 Sep 2020 13:02:34 +0000 (UTC)
Date: Tue, 8 Sep 2020 08:02:27 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Julien Thierry <jthierry@redhat.com>
Cc: Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>
Subject: Re: [kbuild-all] Re: [jpoimboe:objtool/core.WIP.julien 5/14]
 ./sync-check.sh: 54: ./sync-check.sh: Syntax error: redirection unexpected
Message-ID: <20200908130227.xlj57kus7gapxsjw@treble>
References: <202009050512.VSnsZ4vs%lkp@intel.com>
 <89e8b630-b4c7-cb6d-94ad-d954a83c0c0e@redhat.com>
 <cf66ced6-c102-6591-9edf-9bc56cd05393@intel.com>
 <e3c528d6-fe58-e1e9-fb99-044e73715671@redhat.com>
 <7e9c24a3-05ec-e3d6-5c8b-6e668537726a@redhat.com>
MIME-Version: 1.0
In-Reply-To: <7e9c24a3-05ec-e3d6-5c8b-6e668537726a@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bfTULMsG;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Tue, Sep 08, 2020 at 01:10:37PM +0100, Julien Thierry wrote:
> Acutally I got confused, there are no bash arrays and making it SUS
> compliant isn't too much of a hassle.
> 
> @Josh, shall I resend the patches? With the other changes you suggested in
> v3?

I already made my suggested changes, so if you just post a diff of the
changes you made, I can fold them in.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908130227.xlj57kus7gapxsjw%40treble.
