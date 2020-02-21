Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBWVUXXZAKGQEDZ6GUUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C283166E63
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 05:19:39 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id a20sf413704vkm.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 20:19:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582258778; cv=pass;
        d=google.com; s=arc-20160816;
        b=G/FTVCYPsWSzcPUkQ2SPKNLdlUTOLRMcpsRbRLsXTRbahzikZI62HJ43M0Vrc21Z0V
         b/KylAzLlhpTTVY5yYRrxY+NEYBYMlSWXWbzH0fJmFStOENwWXFVYI56S9+aQ1rmqpCZ
         3QaiygSh4kmHntZGBlydG2hGHA77vpK4swBt/wE+4ITdTk4uun2FYERhFL128YUPcOeY
         XJnsWd+ZaAoguhVAH8We2FIfpBsKivWdjWJFRLJoz9BKzf3whHos5YaYeat0eyqAqBSN
         INNGREEtY4tal7xkquk7smv9HOvjb63JviYaKgPt2jdi16qjQb+kFuvvWcGXL8WwA2Wy
         kSJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-version:dlp-product:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=QwOF3NdlLui2HA+H+XrkipeBvUC5hqvXzQeosmVRyCk=;
        b=DZCMUdy2N4RSjXBNAryrxLJLOMfS09cfDVOS6ZpNubGqfmefKynMg4ZQnSV8Jl90kc
         IVbbTu6wD9Hf+KSPfkq17l851fs44Fv+3Xh1mrByNip7qW8+Lt4GORY3+WLOLxLgBlIw
         ApEPR16YAGuiA6d0k6R5kOJN2+sVl7iJTzbv3PLTem/Bf+wgyjxguTVrj//CFCb1zcXH
         BFU7B12h22UOXGIOo6Qk+8TxssPvE981HhMGc7oC49LNStH35jxnYcr2GYUXPW7G5DRk
         OYkqXXtw5lfYlvxxzQo+N4zedY8Mg7jCfZ9BeLXOBpykWwOr2MzBOiwudDdSDr0vYNVs
         lzzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-product
         :dlp-version:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QwOF3NdlLui2HA+H+XrkipeBvUC5hqvXzQeosmVRyCk=;
        b=qs8Ybka2xSE9K6GNOJDg70xBlZIOwlERsnsNaofpGjCx3SfvCCe7DWG+ZbfR3g1o6j
         X/pxjiSOUHIInvWDn3+VhJWRnCFqTap1OR1E1SadiBQZvvVe2t7EwgswNaDuqtMvLmUN
         nD236cGTPPhTm7yX8mNH9d2MjREesq+5myiGPV8q7jcisxKpv3Uz6XI1eGcGTGMHRV7p
         uD4snx0APs4mZR125QDHawzG5CxtUbXrBfadWPrVJsIc4zTR0KLjJ+/9B0cVdwFcEIjT
         QLkCX//AeblhARHGX377DU+pTWWY9841AadEIRT6zujvHtImwRcRfTW0PIpfGe3lLbzH
         YELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-version:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QwOF3NdlLui2HA+H+XrkipeBvUC5hqvXzQeosmVRyCk=;
        b=f84BCR7IiT+GpIlUjiP+JWrs4L9Na4f/f6aSOUpQvVG3apTbaEn6RMpfCVEFip4ZI/
         YARFLmrBLgmytydV6y3FXEzRANBw0ufwYZDH2A8d41mKBEo6NB/SHB3/udO3vksoJHY5
         2sVM1zLXbwcBCVF0xXYvKlIoqaVj9QL1i55uhiFPrqj0wErQE7mpQ0sUhe+VkAICWMJE
         uwlWn6ojl5THSTMnj+zRCtsc5MaIycNTXYJZCIg42rPQicznaCb+0wbE9fN49F3UgrvF
         Td1awU4CBjpvLQqvmNZVRU1mzWm+HuKpzHqOnv4o2jsAK4an8yX9lhcikdKlsfJdxWTQ
         TAdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUw9cxLYffh44dRMlqJzt+4t0yJGPLAg6OMZYXBwfT1HY5I1T3s
	ch8+aoZ/3ws9XGmD6N9vut4=
X-Google-Smtp-Source: APXvYqxkaXxtlKIkPSx/KPdStfHKV7wj+ptp3NWNt5UW+7veZIp28QTyJjd9rqK9U9McaSFRpem8XA==
X-Received: by 2002:ab0:6001:: with SMTP id j1mr17670312ual.56.1582258778437;
        Thu, 20 Feb 2020 20:19:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:42c1:: with SMTP id p184ls78955vsa.10.gmail; Thu, 20 Feb
 2020 20:19:38 -0800 (PST)
X-Received: by 2002:a05:6102:3102:: with SMTP id e2mr18821820vsh.179.1582258778102;
        Thu, 20 Feb 2020 20:19:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582258778; cv=none;
        d=google.com; s=arc-20160816;
        b=w88oQOb81iN+9mlg9A7jBkHZja7BTdWg4upWJIJOFejA62X3Pq839+7q9zsS6+R07y
         VI2UDLjj3sGyQCFJDa+aKRQaBGMZiadPqx7gzPWPHh1Rxbm6QSr/4RniWyydzEqppdW4
         uWgp2hkG9baR+owvHUUcnamDHFxe1HWJiFOe8iuTFJ50kGVbt7A8/6eosF7Mrw44MpkS
         d+R+U9y12lo+gIfK+LjdvDOwNGRpzh5/1D2hmBVaKw4tFiYACSwnG2AwsyOigX4LHQ/B
         UASd8WcWBp3+vGzstl0s8kk/HfEFEPgHpgSObguZLDwcwB5lJXb4u96z+NQ6aoo3dB4V
         Z66Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from;
        bh=UQtrTApZt8vp0eGbnXrT2fzv2I3OCDdaRB1MYRZbFZo=;
        b=ruI6PE/R0ddGhervc3/GVYiaYnpHqJaDAVAakODVxpdMG+9FlLuTumuUXBHL/ZTmE+
         U9aadXvitq8xczvDBrDRZld0VykWvwaQZbdX+N7/kQMTKcbF0/X440vPu8vRG0J4I5yO
         7vCy0AtOCZD885oVdGh1oz0ltwdRa3lvY0qM307xFU7VbjXoabSx9vDup0RS/tObodUJ
         qkMh4hLBNuIOzh+Ng2eRrLSpBbV3y8E1CuzK8r9jLwKlxIhSzEUKdu3pGb9zyRIGaUI7
         K5SnR0af6sMts/Qk5eIKS4rAdmVthjuwwOjRid794AD5faI57ARSnE+QlRwiIC220Ahq
         qaFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id o19si84794vka.4.2020.02.20.20.19.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2020 20:19:37 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Feb 2020 20:19:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,466,1574150400"; 
   d="scan'208";a="283606569"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by FMSMGA003.fm.intel.com with ESMTP; 20 Feb 2020 20:19:35 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 20 Feb 2020 20:19:35 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 20 Feb 2020 20:19:35 -0800
Received: from shsmsx154.ccr.corp.intel.com (10.239.6.54) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 20 Feb 2020 20:19:34 -0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.126]) by
 SHSMSX154.ccr.corp.intel.com ([169.254.7.141]) with mapi id 14.03.0439.000;
 Fri, 21 Feb 2020 12:19:33 +0800
From: "Li, Philip" <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: "Chen, Rong A" <rong.a.chen@intel.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: RE: [tip: core/objtool] objtool: Fail the kernel build on fatal
 errors
Thread-Topic: [tip: core/objtool] objtool: Fail the kernel build on fatal
 errors
Thread-Index: AQHV53YSMCfaeCsY1EOoeJcYHJKuJ6giuM4AgAE0sACAAR9vgA==
Date: Fri, 21 Feb 2020 04:19:32 +0000
Message-ID: <831EE4E5E37DCC428EB295A351E66249523CF3FA@shsmsx102.ccr.corp.intel.com>
References: <f18c3743de0fef673d49dd35760f26bdef7f6fc3.1581359535.git.jpoimboe@redhat.com>
 <158142525822.411.5401976987070210798.tip-bot2@tip-bot2>
 <20200213221100.odwg5gan3dwcpk6g@treble>
 <87sgjeghal.fsf@nanos.tec.linutronix.de>
 <20200214175758.s34rdwmwgiq6qwq7@treble>
 <CAKwvOdmJvWpmbP3GyzaZxyiuwooFXA8D7ui05QE7+f8Oaz+rXg@mail.gmail.com>
 <20200220004434.GA5687@intel.com>
 <CAKwvOd=p18z8yxfuOBgpOheZOUzmgAfzvVD-5Kuz=VqKCUpOKw@mail.gmail.com>
In-Reply-To: <CAKwvOd=p18z8yxfuOBgpOheZOUzmgAfzvVD-5Kuz=VqKCUpOKw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

> > >
> > > Hi Rong, Philip,
> > > Do you have any status updates on turning on the 0day bot emails to
> > > the patch authors in production?  It's been quite handy in helping us
> > > find issues, for the private mails we've been triaging daily.
> > Hi Nick, this is on our schedule in a new 2-3 weeks, sorry not to update
> > your in another mail loop earlier.
> 
> No worries.
> 
> >
> > What I plan to do is to cc you for the clang reports when 0-day ci sends
> > to kernel patch author. If you notice something may be related to clang (since
> > we always integrate newer clang version), you can help filter it out. How
> > do you think?
> 
> If you would kindly cc our mailing list "clang-built-linux
> <clang-built-linux@googlegroups.com>" we'd be happy to continue to
> triage and provide suggestions.  That level of indirection better
> allows us to deal with subscriptions and change of email addresses
> without having to disturb you.
got it, we will cc this mailing list when generating clang report to kernel
author. Thanks

> 
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/831EE4E5E37DCC428EB295A351E66249523CF3FA%40shsmsx102.ccr.corp.intel.com.
