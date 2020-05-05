Return-Path: <clang-built-linux+bncBAABBDE4Y32QKGQEUILAC4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id A01AB1C5CD5
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 18:02:20 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id l21sf1271821wmh.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 09:02:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588694540; cv=pass;
        d=google.com; s=arc-20160816;
        b=YCQNdXSyZwrEU8ktmC9GqEpaLKPjOeiSp2oQLDz6ZjHolExBQ2/iZCVU7luDSCCnfx
         W36UfGHCa5OJD+IM2H/uz1IpQZFOOaRHqNETUeLayXWNbQhdSI27eIg2AcsEDqP9+Um1
         UFV7o3mp1v0iKO41HUAOcJpY4JPPzjan6hNjIRaj4kIE4cf7mNI3CFHLJCDCcUhonqbc
         FzULeiCPkji0Ok03vb0Z1n1ZvRZeMArY6kEzOCDQRVxYbDNION+xM2K9fcPbfjoSk7C2
         AfW4P20R4EjJVwbYa9z0mDtj27KzWbBTiqOYiapRTHKOZWJqnx0NRenGRYVNlo8HlE1x
         2Lbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=/BdrgYpNOQC1fTZJ83gViwKqULOOd0FG0ir1+vbiDD8=;
        b=AvUNs9vdbRNDdiPqJoYjnv9l0HbunglHfUBmCLjdu0+lzYMqxaFtRcCKSP/zYleIYy
         juDqcyArj9BDquBVzdXgHxEn5nz7mMCh1y3JerilcRwZysEPS1wbo+zLfGHqKzNpveCX
         v2z5BxB6K7MTEGyNoz+lYQd9zNRyMj4PmaA4fjvhxGR0An1CY7FxGzTTFz8hjbvoa1bc
         w1HVviLCxn/9zF4yBUIsFTZtTbaWIc0y+vHwJYrnS0CSFb6fnJHHgSbETFKqqwJ0+wpZ
         i8fSfSWkUlQEL30DmchicBrUombnEGCtF4+zrJCD3dapsnsXYzK2wATiw8N3cyRO7kD9
         hOUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/BdrgYpNOQC1fTZJ83gViwKqULOOd0FG0ir1+vbiDD8=;
        b=aPH8QMsz2Dr9hO5ORTaX0+3SxYPpm28efv1Saq5kMJISWUuyrrVggIHxxa2TSogE/i
         XNWbLXwfZXuauFZ5eCsB8yRnM4X3qVx2qP6NlxtbKCH1xdGdDdBHhuX/6oZ0hwL3EgVD
         ftuuFyHMvN10HIBI9fgieaKmUJoUSkH80d0vkdTPLFcMp3CB18WqR8ArJmwLXV5zpbVk
         w4zv0tvryjxJlcyIgdoM9zq/EL6G4ZK7aho6BYXzv+LiH2BTyRF3Db9QKIfOt8XBiEk3
         qv25r6mCdH9werO6aViuJo4RY4Ef6ARm4kVCsYK0fct2REbI9aAcs6R6DpSu8qi2IaDM
         coyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/BdrgYpNOQC1fTZJ83gViwKqULOOd0FG0ir1+vbiDD8=;
        b=Ft8e1g008zTmg0SLh4AkrbV1hcfMHPaD87F54qMxPyVarequfYmT4i1IUZnKyEbRzU
         s8XtoanHfDuUYy8aTSrUGzYdmF5ksgH2g5eoSBf+JTfRRlsxBs4uRqXuWnIHg9l9F/M4
         wa1kS84sRxTemmQbvn0LMQCz2DeKmtCryRxqtg4WcXTfZdbA1XfPWMkl87LFkyX/jCQn
         ZhR5QLCsPxyW8yZDXSVyuRf8t1wopc2WAyy49M6B2igp5U1ZB/lc+9XEgxgrUTJINZ75
         tnm9RtXVChhb/mpBBnO+QaRPvzcVqm+cBRdG4w7ggVINMlQgR+3zNcktIO8k3JqJNur6
         sOlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puaf1qGW99SEmZg63nRTuTcqH6P0hOrd9cm/tEsQfo1Sxw09S568
	8Jzx8NrL+JTy3rRIxDDUXNg=
X-Google-Smtp-Source: APiQypKKBhATBnCnFZ2gDl6HFs5VRQyXQ8TItBDbIPkBjE/n5ToELBD9Fy+Jlk0VofJxFdaECQnKgA==
X-Received: by 2002:a7b:c1d4:: with SMTP id a20mr4201693wmj.111.1588694540421;
        Tue, 05 May 2020 09:02:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:224f:: with SMTP id a15ls5136829wmm.3.gmail; Tue,
 05 May 2020 09:02:20 -0700 (PDT)
X-Received: by 2002:a1c:e1c1:: with SMTP id y184mr4362376wmg.143.1588694540101;
        Tue, 05 May 2020 09:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588694540; cv=none;
        d=google.com; s=arc-20160816;
        b=wEntcGEDVz5NPWGWhAMtd6rV43xPny7FOn5u1Lhe/+vigbhO8YgQ85z6k2vE1CmSpT
         9JvvX+4q5O8OjPVMskA38630NG7YwbzXLHiUM1Tqmjgfkr2NdmLA/mjxDIyitEUyGs2G
         b0GntyrKy6vr2KNkkFZrlQENsx9o7gYkyyXhx8ZulQ1LhanGb831JETuK1O5sqTaCfz3
         KTzUKSNVYcaMwilgDZ6fQIB77HLlOBflSp2xaxN4hGmHrY0ZM5HQbg7lXnmsfId54TVp
         l0xUnMs8GLNm2jZuMokguvSYY9cJAfq7AsgrW0KtwajC9DpSCygdCwvTrjtRAKHUqHWb
         1NAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=9Y5FqZzub22TsbFAalRIGVy7bbG5ElObgbHv9gg5Ubk=;
        b=C21KvQfpcN9FAtzXbD8vPHGxlywt7+4In6ipk070Dlt+fleIlK8TpQCuRwlBbGYxGa
         mhNueOXjpJenQhBal7ameAA9o2EU5WUxEuvwGefD0Xp2AZ8JBjKTYapyBuuIOHSGI2iE
         cieKo26yhYplvccesZpl/kSG8aGXO+RhB2b8Qb3sgfpPY/cvJ9lSdYhPG3xNlFaOkVAx
         5pcJCDPgLZlogceCgYOJm1u30v7PbOcTXbAkGXeR3eZsPC8Q/g3LCS2U/GuLgor/s5xi
         bGyrkzrOwHLlLX0OcukvzoCZKTBZGMSkpMyFudR8vSUD9KJRNr+gS6MwVMjaBd84f113
         Vayg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id h8si119056wro.3.2020.05.05.09.02.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 09:02:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 8B845AEFD;
	Tue,  5 May 2020 16:02:21 +0000 (UTC)
Subject: Re: [PATCH] xenbus: avoid stack overflow warning
To: Arnd Bergmann <arnd@arndb.de>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Yan Yankovskyi <yyankovskyi@gmail.com>, Wei Liu <wl@xen.org>,
 xen-devel <xen-devel@lists.xenproject.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200505141546.824573-1-arnd@arndb.de>
 <30d49e6d-570b-f6fd-3a6f-628abcc8b127@suse.com>
 <CAK8P3a0mWH=Zcq180+cTRMpqOkGt05xDP1+kCTP6yc9grAg2VQ@mail.gmail.com>
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Message-ID: <48893239-dde9-4e94-040d-859f4348816d@suse.com>
Date: Tue, 5 May 2020 18:02:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0mWH=Zcq180+cTRMpqOkGt05xDP1+kCTP6yc9grAg2VQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com
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

On 05.05.20 17:01, Arnd Bergmann wrote:
> On Tue, May 5, 2020 at 4:34 PM J=C3=BCrgen Gro=C3=9F <jgross@suse.com> wr=
ote:
>> On 05.05.20 16:15, Arnd Bergmann wrote:
>>> The __xenbus_map_ring() function has two large arrays, 'map' and
>>> 'unmap' on its stack. When clang decides to inline it into its caller,
>>> xenbus_map_ring_valloc_hvm(), the total stack usage exceeds the warning
>>> limit for stack size on 32-bit architectures.
>>>
>>> drivers/xen/xenbus/xenbus_client.c:592:12: error: stack frame size of 1=
104 bytes in function 'xenbus_map_ring_valloc_hvm' [-Werror,-Wframe-larger-=
than=3D]
>>>
>>> As far as I can tell, other compilers don't inline it here, so we get
>>> no warning, but the stack usage is actually the same. It is possible
>>> for both arrays to use the same location on the stack, but the compiler
>>> cannot prove that this is safe because they get passed to external
>>> functions that may end up using them until they go out of scope.
>>>
>>> Move the two arrays into separate basic blocks to limit the scope
>>> and force them to occupy less stack in total, regardless of the
>>> inlining decision.
>>
>> Why don't you put both arrays into a union?
>=20
> I considered that as well, and don't really mind either way. I think it d=
oes
> get a bit ugly whatever we do. If you prefer the union, I can respin the
> patch that way.

Hmm, thinking more about it I think the real clean solution would be to
extend struct map_ring_valloc_hvm to cover the pv case, too, to add the
map and unmap arrays (possibly as a union) to it and to allocate it
dynamically instead of having it on the stack.

Would you be fine doing this?


Juergen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/48893239-dde9-4e94-040d-859f4348816d%40suse.com.
