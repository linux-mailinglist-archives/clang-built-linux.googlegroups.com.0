Return-Path: <clang-built-linux+bncBCI2VAWMWUMRBL5C637QKGQE4M655DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 893D32F2EA5
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 13:08:16 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id t17sf1354493qvv.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 04:08:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610453295; cv=pass;
        d=google.com; s=arc-20160816;
        b=0xrlh3GC2WmBnSPGRbBSQiVzKox4WY9CJr4wqK19piiM6TNc3DNO4dPTAxo2L9eDqv
         5i1wCPwhEsRFmFakpCXSRvGnUfdb00fqF62m4ngdDfBqiV1z4SQT7uscwQxUOGUsYSuV
         lk/VI1AtUpaVBpNR0ijqFUBYLthJAvobz8AMzEkCoUveqG2LIlnRar6Dr//TFT6LCu6p
         3lIOErPrqJjhsebRWcQFjmc4JgtnEW6mXLoZjVXMxjLy5JjOGPdKtJzJAhe5lpHn20lm
         vy+ezMoeGuP33V9H/5hfz+wgWcxwKUjWfKzIP8BHcahm1QEVaFtdBtUTAfmmp3KXI8do
         HrEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=+wmJuUWkUM6eyolIsv4DBoqS1duhQb3euwONfnXMWiw=;
        b=osN7vyHzRCktXJV7ZJrqIS/yL13+sGqDOVZs112s894ME9WaK49Vd1ZHMIkihQXkAq
         Un3sd/lC1iea2DJj52xEa9WsSOnabV8YhV12GZVJYiY5HpVxX0TrV9EIMtW4Qc5pBS28
         TINg4Vcvr3dxYRcpUhKEqZLM+z+BSKfsg138ymDeZbruYbHXTxffUKevlngPMLGsHVOf
         yFuQTDQb9Uhe20iFBgKRrv5CPnyWiKfmgVT6V1c0a2RiHGoPL3NbC0KXIUUD1aVHAxwR
         BcK9y3dSmx9sWoZaVEWUT8wLwRj4ZGsRLD4ehoLeFOKl54Cct1zJi46/gOKT4MPXl1Ht
         Inig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=fm1 header.b=Phpm1HLB;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=bhHGDV3V;
       spf=softfail (google.com: domain of transitioning jiaxun.yang@flygoat.com does not designate 66.111.4.230 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+wmJuUWkUM6eyolIsv4DBoqS1duhQb3euwONfnXMWiw=;
        b=geKnXtXgBWDBzQM6z6rS9MZNquUb+ZSPda+bgniPfU6Pk4/1nDxydG3QZgqh9rRi+h
         uGpT2Zt2bDG2vji5Pj/ON73HwAxkjGfOUIU2N+hBG2FMudLwdb1wMcH2ecV3l87vytH/
         Zn7Yt1skGzQ0ODeHFZUz8swRV8tQxk3I6rQU1zLMD7oiLkvtG2lfmnpM2J7gchtow8uA
         X6IGI++ejYyqQ2vBsIvdhMysBjJUF3Wy7DcF+ivgvOVMs3TMuc0iqdDngAPTxa8nblLv
         IdeDUBIDbodDZN/rvbol9Ansqf5BRfP78jJPm9mp2mdIbP6DCk8thrcAX0gxeueVOwx9
         zYCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+wmJuUWkUM6eyolIsv4DBoqS1duhQb3euwONfnXMWiw=;
        b=Sr76K9wuXwQNy21ls7JQpC1cQo5lr+l5LW7+9GVwMFWVGgcVxapWtrru1nwYMtK2ie
         0fFJSE/QQ5fduam7a5zeRwHzncxykAr8P4IEZYnZkNxh4mrzDD50c+W/TbQsmxRnIbp6
         OA4yu8h56AQ+xHLW9rn2aqEPWs+Bz0+C6P5qF4EvdGJjuoaVEGIi80vJGv9Hoze+H2AU
         SQEEmqOibJjfEjquTKNJOTWKC1OTE6SippIVkeD4YKnl7/srjmWIBjqmAITmynNA8Reu
         owuQIswR7lsB0g5LGyGdyVSOU9RsEnzdF1yfw9c2UGPdFfivkgcRZN0I6iQ6pebA5sJT
         bn9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GkwfS5zfHibXXLfTkcpKXSDwgXZFzDCv23Ik9qETj2M/hjlj1
	IpNE9lxgF3dqZaooI6ixZRE=
X-Google-Smtp-Source: ABdhPJwp5+lE02OwdyWtNxjvEZYH+aCgQyyPgaEkY7QgBp4EQCJcVSk2nYpp7gAiaC2+aHcLFoSB5w==
X-Received: by 2002:a37:9c07:: with SMTP id f7mr4144105qke.234.1610453295431;
        Tue, 12 Jan 2021 04:08:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ea19:: with SMTP id f25ls1493452qkg.7.gmail; Tue, 12 Jan
 2021 04:08:15 -0800 (PST)
X-Received: by 2002:a37:883:: with SMTP id 125mr4320320qki.366.1610453295079;
        Tue, 12 Jan 2021 04:08:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610453295; cv=none;
        d=google.com; s=arc-20160816;
        b=oVsplxYKoeYgwIM8HQfUvMdnEjA3sBjB1Af43nPBnGVvI6a2jbaP6T31EiFV+m4MBl
         EGcMn53QR0AU+ajDbO9gLUZifT6yqVPgX+Ja99pjp3EfmH05zyHfBqLz/gbnABvGPYRa
         2Lb7oGjz/rsp4ogVq6J/RxQRTUBj8+HjOiClhLvJPi7877M712QGmCJBOvkUEJNQ7Gi8
         s/LgXYIa6ZrXxYBuHZO5b6V6/KdCHYQUqTbl2VdU181MpwSpDQgd3WqYJPdMKzDEiGc3
         7Ki8UoxVutxaagMh1Kn8nSXs/Vu9JiGGflqyp54mEJpMal6mN+h94T1IFZ0IxDDnlbl8
         oJCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=OBL61v2XfVh8uQoMWSj6E8vg41BekK27ZZGoQxu+gmc=;
        b=U1bPqRIH++WmI3w4ZpIe6Uyp4YNyG3FKHix/uqriv4IRVIYlNim5IdDsEpoUGiWxD5
         zTE1xg1ecVc14/7HczHFHgx3BGVtASjJfS/+LbSlHf5AZfa7ik2V7/mKXlYVXlFJLcQ9
         XHh9uMrK/r+nrRj0eAYY5kBS6yq31l3N6o4Ua+LjEJlCtuhvBOLsP8FfoiSlzRdGxHw8
         To+C5aoKo+5V8JS9J/yuMZkMBCfPjvRQ5w7LjlMFIir5xwPeM5Pou34ZQPA6Qvax72d3
         GV9cW2ErypBs1tW/OI+XM1O/OlcANZss7cMsaCcDfG0p5GlGrGNpwckvGHrfyjNUHrnn
         SOog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=fm1 header.b=Phpm1HLB;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=bhHGDV3V;
       spf=softfail (google.com: domain of transitioning jiaxun.yang@flygoat.com does not designate 66.111.4.230 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com. [66.111.4.230])
        by gmr-mx.google.com with ESMTPS id t2si250016qkg.0.2021.01.12.04.08.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 04:08:14 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning jiaxun.yang@flygoat.com does not designate 66.111.4.230 as permitted sender) client-ip=66.111.4.230;
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailnew.nyi.internal (Postfix) with ESMTP id A1EE9580817;
	Tue, 12 Jan 2021 07:08:14 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 12 Jan 2021 07:08:14 -0500
X-ME-Sender: <xms:LZH9X007jVGeVrLKmwOtVUWr7FMDt1oFqhfq7qxMDO-wOzuAs4tpOA>
    <xme:LZH9X_GJW1WI8WjZcP1oNLCnRTt7lV8TVMWZIkFBO7Dt1MYldYNIjk9mtsYfX8gx_
    8o99R3ytiExxG6ZN4s>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedukedrtddtgddtgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefuvfhfhffkffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhmpeflihgrgihu
    nhcujggrnhhguceojhhirgiguhhnrdihrghnghesfhhlhihgohgrthdrtghomheqnecugg
    ftrfgrthhtvghrnhepiefhgffhieekudegjeevgfffveegveegheffhfduieeiffffveff
    ueegveefgfefnecukfhppeeghedrfeefrdehtddrvdehgeenucevlhhushhtvghrufhiii
    gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjihgrgihunhdrhigrnhhgsehflhih
    ghhorghtrdgtohhm
X-ME-Proxy: <xmx:LZH9X86ZdLU5bsHnjuIUpWQfaEIS7eRpcEdCvEQHBW-YXaeBbtx3NA>
    <xmx:LZH9X938n7fdwBSXcnRQ5XBqZrnxFGY8z6duYYeesMiIRQ6oiJ5nRg>
    <xmx:LZH9X3H8TOpHFYHZZnyru3iUaISr_oH9Sz8HUre0MZIjL9WwunY09Q>
    <xmx:LpH9X7g_WwWAzhcPyNKil8wXVyaIQj0OG5Qq5m3KFTDidYiQK69S4w>
Received: from [0.0.0.0] (li1000-254.members.linode.com [45.33.50.254])
	by mail.messagingengine.com (Postfix) with ESMTPA id 73A09240066;
	Tue, 12 Jan 2021 07:08:01 -0500 (EST)
Subject: Re: [pm:bleeding-edge 20/29] drivers/acpi/platform_profile.c:67:33:
 error: passing 'const struct platform_profile_handler to parameter of type
 'struct platform_profile_handler discards qualifiers
To: Hans de Goede <hdegoede@redhat.com>, kernel test robot <lkp@intel.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org
References: <202101081623.CGkLO3Kx-lkp@intel.com>
 <5e7a4d87-52ef-e487-9cc2-8e7094beaa08@redhat.com>
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
Message-ID: <106d7891-230f-18e1-1b0f-cb6a62cf0387@flygoat.com>
Date: Tue, 12 Jan 2021 20:07:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <5e7a4d87-52ef-e487-9cc2-8e7094beaa08@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: jiaxun.yang@flygoat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@flygoat.com header.s=fm1 header.b=Phpm1HLB;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=bhHGDV3V;
       spf=softfail (google.com: domain of transitioning jiaxun.yang@flygoat.com
 does not designate 66.111.4.230 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com
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

=E5=9C=A8 2021/1/12 =E4=B8=8B=E5=8D=886:42, Hans de Goede =E5=86=99=E9=81=
=93:
> Hi,
>
> On 1/8/21 9:52 AM, kernel test robot wrote:
[...]
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
[...]
>>     2 errors generated.

Oops, thanks for the reminder, I should exclude 0day CI from mail filter.
It's wired that GCC didn't say anything about it.

> Ugh, so that means that the current version of the
> "ACPI: platform-profile: Pass profile pointer to driver callbacks"
> patch is no good. Since this is causing compile errors I assume
> that it will be dropped from the bleeding-edge branch.
> Is that right Rafael?

I'm not familiar with x86pdx and ACPI workflow.
Should I resend the patch or send a fixup patch?

>
> I believe that the best fix is to just drop the const everywhere,
> neither of the 2 planned uses has its platform_profile_handler defined
> as const:
>
> 1. In the thinkpad_acpi case it is not const, because of using set_bit
> calls to set the choices bits.
>
> 2. In the ideapad-laptop case it is not const because it will be
> embedded in the dynamically allocated drv_data struct.
>
> Jiaxun, can you do a new version where you drop the const (and
> explain why this is done in the commit message)  ?

Appreciate for your patient investigation!

>
> Regards,
>
> Hans
[...]

Thanks.

- Jiaxun

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/106d7891-230f-18e1-1b0f-cb6a62cf0387%40flygoat.com.
