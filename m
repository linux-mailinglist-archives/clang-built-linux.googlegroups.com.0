Return-Path: <clang-built-linux+bncBD26TVH6RINBBYOETDXQKGQECR4L2WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6056810FA35
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Dec 2019 09:52:51 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id i70sf1800155ywe.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Dec 2019 00:52:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575363170; cv=pass;
        d=google.com; s=arc-20160816;
        b=CVquQrLhbYMMI0KfqoWdxHbVrHpAX9GjPEy7FQNSbL7LOjbR+7Hqa8KqoqCTXaDIoY
         iElJ/CDPfpEHCPh3fHqpZGwgUgwLRvIbcNZO5qebBn+7erk7BBDq7w/NalwqaB4aN9aA
         xRAR8+DMCQJ3kKRJ8132j3WZeuQguPOYxzP5ewKkC3he3lIQImO6fE3cFdclkg2F2/fA
         6/yA3RpBmth7CAEu+XKjqB8X2UmCagPVWUMEUIkBAGwTN4a8bc8zKVHj1bCmm5EPdvOR
         GHnE03FviZoY5uf4kOOBkfiyYjh/lyqQ64FoSpe1rPON3ObvtzLL9wCAL6t6yGZDsiSo
         8r7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=fQVHtb8T+qbgu3sAR0rG9WdpjqKjVaF+voLIKgYx8fw=;
        b=uEZ7figoxz9+4LiMxAQI9XuWf9SH6ZYV903+jZ6Smohmf8XrH4r1x7rBkW+c/9EM5D
         9YE8iZrV+hNp0ICS3k9bnkR4bF6tfY/U7NiQLx96T6Pz6QpBXvwg3xy/TQNmjZhgQx+G
         WXDU+3s7Q84xIE16cHgw+hPuyal7Vjr8Xzhm1Klr5zbpVeTbYvMSuFulDSk4GETDc+je
         D2lcVaXRK748N0tedOHmOGGlZFFAYWMYSdfUlHnO7/Cx9ybbtDrlfI+TDkaOPuP9PnEL
         07vTH9gLcHEdEc1vMhdoEOSSVKEBwtOaxf9456LQZmWd+d4au6u2OdwhByULNo3GbDfU
         nwCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fQVHtb8T+qbgu3sAR0rG9WdpjqKjVaF+voLIKgYx8fw=;
        b=b2e0iX8BpuIIb3yW69cMpH++6dofh994ItbeFsUxac32K2BNdcDPVclzH+ga4qLyaa
         u3MUkdOopZg6wk7v2yKHdYaw+oC5nnT1OrnBA7F9Ugf7/MR21g2afStbQ2NT+LY0VcvY
         oUSS3pkMglVhE/f/bHyJLezVGNCjOgO/GDAn5MVCu5/bZNxW94CMwFa1iyLjamUGSP4X
         av4ykZ5oU7tCHZr9eR+F2ZDp1PSgqdhyWwCxkxmqJwTWOsvQDX4UkPitniZXrDHWxAl4
         tQvDJzKfns9ipVXybys4UJAxBzNL0TslTBIlm4LkRTSMmjkwkIudGfJJ4B8PpL3tBaq+
         uxzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fQVHtb8T+qbgu3sAR0rG9WdpjqKjVaF+voLIKgYx8fw=;
        b=NkE7s421fGBfgxhzRjM6Ao/8MG8QJPlXKR/KQhZrDkVTn3SOX0rchUpLodsqOJd9zI
         XDUVnEdJmiE7GdPGFIzzfi47Bt1UvcGW8lXFGAVE5o6oteupk3jAQaHI5zp/RJ2HDMgE
         lCESFl2putUkAARymEKNg9DlOsUYA7AoiaE60ahVekjqqgvSlOxzu3rMh/Ys4e9904p/
         8u1hhIAey0W1oQUveM0Hy9QWKizUUOFE1dnkrDgA5oqt28Zl7SART3LgG1otAHBXTUwZ
         qnyYQJ9Jjd4BZOkpDvP8Xy3lDB32NN4F3NVlx24jq3ZkFqcaof35REF5gQyBljJciTzZ
         BwMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpDcXKuQ24pGortKiOnofbYBKnjTK4NS5kgU5Ph9BKanJ2Oiat
	eWpvgrAiozxpISalsk/Gp3I=
X-Google-Smtp-Source: APXvYqzTqt65ZmykqFWC8KQVtXo9EkjPeVLBSHaeyOZu5NLkYQGQafqL0TdxCASP/a3fLIiKJQeByQ==
X-Received: by 2002:a81:9c4e:: with SMTP id n14mr2824164ywa.237.1575363170056;
        Tue, 03 Dec 2019 00:52:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6984:: with SMTP id e126ls414211ybc.15.gmail; Tue, 03
 Dec 2019 00:52:49 -0800 (PST)
X-Received: by 2002:a25:948:: with SMTP id u8mr3571308ybm.110.1575363169683;
        Tue, 03 Dec 2019 00:52:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575363169; cv=none;
        d=google.com; s=arc-20160816;
        b=qdCjgHpvC29DpEzIUSxklOqBd+hpayuQWaYv9HsdXdzlHgjJjAxWnXuTg4LWShqEQj
         pozXVsgn/UuxsvgFzwTA1NIlHs33Vq2eRhOPFpB/ARtd8QqwAjAwc3x9w6NXua2xfsWP
         iw4M3nQV4fG9Zw63kko/FlJpmlnmRDOFqM5P+w7rxNceabTN5QEkg6DBCht6ypkQxhzL
         xP5pBFTSVnba8VieWDBqiL30HX9sdHqJOuwozYBH4JYRpYRIe/SOM5oV58e+UU1+TIdh
         sODoAMKrp9N5krtxmg6bqZ5/ofrZoIzExpehq9fT2jG+Gwl6TJzpT2pdrTTkpsl0bXl3
         L3Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=WPu0nnHbjC53jeSCKQH3hTvQZcDHfPmW+mVu66CUf3o=;
        b=rRMttmYTlbruB9nfJB+Ma766VdbgQH4EvcRAF3DrdGBr6J4IQkrxygDbpwHBCGN5N9
         A1Z9viVvvrXc3g09ksr74LKMC3td4PNtBBBDiT2EpzF/4noLUzHDoPgn9t+QSsK8131R
         yR42wiKDls9LGAKbWqgK9yA4CnHuzAA7kbfe6MGCYNs+QFXu/huapo5ZLtawaprH2eh6
         mjlCeks5+Zz9aFohKBzD+6k2abrn4k+MxEWJrG0/JUd46aXoGDBjeHCnFDP5/pDkXfxQ
         gP8i1FphRshkqxi1yCXGKqtgVVGZRy5xc+aX/AqwUb2knj0hxP7h/utUUyhc+EbwaP8m
         yCPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id v64si76495ywa.4.2019.12.03.00.52.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Dec 2019 00:52:49 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Dec 2019 00:52:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,272,1571727600"; 
   d="scan'208";a="412107680"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.6]) ([10.239.13.6])
  by fmsmga006.fm.intel.com with ESMTP; 03 Dec 2019 00:52:46 -0800
Subject: Re: [atishp04:efi_stub 1/1]
 drivers/firmware/efi/libstub/arm-stub.c:203:7: warning: variable
 'secure_boot' is uninitialized when used here
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Atish Patra <Atish.Patra@wdc.com>, Philip Li <philip.li@intel.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "kbuild@lists.01.org" <kbuild@lists.01.org>, "lkp@intel.com" <lkp@intel.com>
References: <201911191421.oOPAr13c%lkp@intel.com>
 <CAKwvOd=2frrSGAh5a3NtbcXuCsn3B4xJYyFvLGftqaDmNj+AYQ@mail.gmail.com>
 <dfbc952f478c57bcc2b8ec41ef0542119785444b.camel@wdc.com>
 <CAKwvOdkntuMELqccE2UT9p0878OWnGLDWfqaxeB7wHSJNRXETw@mail.gmail.com>
 <07bd7e95-c28e-6890-96e6-1a1c3b97dbcd@intel.com>
 <CAKwvOdkoixg0D0_6F7v=PyhkgbR6UEe1CHKYM3M=5PrwtLkdgw@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <0960ae97-8758-628e-7c42-2d0f982c3759@intel.com>
Date: Tue, 3 Dec 2019 16:52:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkoixg0D0_6F7v=PyhkgbR6UEe1CHKYM3M=5PrwtLkdgw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 11/26/19 2:11 AM, Nick Desaulniers wrote:
> On Mon, Nov 25, 2019 at 12:11 AM Rong Chen <rong.a.chen@intel.com> wrote:
>> Hi Nick,
>>
>> On 11/22/19 3:10 AM, Nick Desaulniers wrote:
>>> On Wed, Nov 20, 2019 at 2:46 PM Atish Patra <Atish.Patra@wdc.com> wrote=
:
>>>> On Mon, 2019-11-18 at 22:39 -0800, Nick Desaulniers wrote:
>>>>> Atish, below is a report from 0day bot from a build with Clang. The
>>>>> warning looks legit, can you please take a look?
>>>>>
>>>> Hi Nick,
>>>> Thanks for the email. This is a work in progress branch. Is there way
>>>> not to trigger kbuild tests on this branch ?
>>> That's a common question that Rong or Philip can answer (I forgot what
>>> the answer has been in the past).  Rong/Philip, it may be good to have
>>> a URL/link that I can point people to in the future, since it's a FAQ.
>> We have blacklisted "efi_stub" and "wip_.*" branches for Atish. In
>> general, branches named as ".*experimental.*" or ".*dont-build"
>> won't be tested by default. and we have a doc to introduce basic
>> configurations: https://github.com/intel/lkp-tests/wiki/Repo-Spec
> Thanks for the link. Looks like it doesn't mention the `wip_`
> convention, and it says `*experiment*` (more specifically).  Would you
> mind either adding the note about `wip_` or a new wiki page saying "If
> you don't want 0day bot to find/test your branches, please use the
> following naming conventions when pushing branches: XXX."  That way in
> the future when I nag someone, and it was just an experimental branch,
> I can just send them the link to the wiki about the convention, and
> don't have to nag you?
>
>

Hi Nick,

Sorry for the delay,=C2=A0 I just got the permission to write a doc in=20
github, please see

https://github.com/intel/lkp-tests/wiki/LKP-FAQ#is-there-a-way-not-to-trigg=
er-kbuild-tests-on-a-specific-branch

Best Regards,
Rong Chen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0960ae97-8758-628e-7c42-2d0f982c3759%40intel.com.
