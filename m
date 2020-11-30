Return-Path: <clang-built-linux+bncBCKZRC6YR4JRBVUYSX7AKGQE6IQQKTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF072C8E5B
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 20:47:35 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id q141sf7241763oic.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 11:47:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606765655; cv=pass;
        d=google.com; s=arc-20160816;
        b=nXTxKihG+LEUDn75eqWqm7cnVty5LHRrsGYHaTqTYUw8J56DnHgFUBCxpQYYgMi1xv
         9/dAoKefm1z5j6YbGhC2UIjxnRrdWhWbxIHM4BwrbKdvdY+R2YK84fnuLJlkugRyjAn0
         ICmW4kA/jRW5A7VI1jXISDU+1+rZ5xNeosW3Do4JxrJvYnv2DjtuqOpzQRHu6WJKvYRt
         ROOSaAzi7+NOonCdQj+ICFL2b/ORFl+g/8zHMolBUv8EcRnk1VFv76XuVd9jv1oM94nu
         0Gz/l+Ht/7L4OBQcPm0Pzaslqgk5Lf7lq+Rr0nsHNZwuMbG4N9Jcp0B5g/E16W2p/qsT
         7gZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=E6kRrzU6wG30w7LSSHKvRdp6ALKLh0fbM2DUVvUYxkQ=;
        b=lu7yzB6+mMsJNsz+hVz10hewOjBRNdHd2hPSsaeHMIGiHJw2+WsUAjNd7mVLVw1dQh
         MSv5Vdls4PrHXaywt41STjYDMAU/ZytWHfHXL2XXdJbW9L7cKwt0gIg9+4xTw5yglOle
         hrsfDf1GmZHoaEUqpqHpypuYh7llsSidPnv+RP5/FIlneuisiDK+kf2QW0Ij76HZNbEs
         6gA4pmmzQQtWaMjTJiiqpMgseRauSxUayK6VwmDZdRs3NRUFPKWrUhmvtUrTKlwpPr9d
         7PgQ+IVFHhi4953trqi3jKIdB8R9YtUZak8dQYZl9PrS81Co6m98pIcnGvqQjCGzCyTS
         Xj8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yu-cheng.yu@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=yu-cheng.yu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E6kRrzU6wG30w7LSSHKvRdp6ALKLh0fbM2DUVvUYxkQ=;
        b=eO75PVDnLilosxWGlKBuw/2NBtpz35qIuzmlCvBochhquaxulgvpbHjwlAv56LFWEJ
         z4NuUm++6gDU+6isDr/Snzqf81wT7Tiu4ySviZg/GDi3NSY1lcLJZ1gbaIwtJP3RGERe
         BMy7mURvF7f4HUTHwK3jwVkFu72lVlkukLLJQlelzR8gEtE0khc3iXOqSObCzLmS64OZ
         71P4kKfuUkIBuqvOxK8ByFJi/FMwWAOuMF5I50etCYAZaGVFobGvLkRyGWEwIpBA4ovK
         raRX1BVrwR1rO5hYbSm1RhQD4x41+0FV2lmK/lyMudLLGpQAuuDl7b65cjxlcOKB+rsQ
         VAsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E6kRrzU6wG30w7LSSHKvRdp6ALKLh0fbM2DUVvUYxkQ=;
        b=rXNEWtTH733FfbhpjjNgIjMmQl0gXBgWhFiSkM11ZgbhfH1dGPMl5IVYqF3BlGMwET
         As0KCKF2e7Faj8kiiJilLPmFigenRqpT9RI9R72e2aRVGt8aJ9PSCkN1Y9l1CX3eJ21f
         F1PcbnxMDSeV9BoDlvz5o5MIBQ5V+cCszcPrvCPs1S/0plib3OMm6z5KX8tkk79xfGJ7
         yOE5YWifLtdzmFbGvK8sDByoU+nuEJvYFwqynfdcqseFLHzx97Ctvge2yavFk0rFD3A7
         QvGuvj4aQPMmspMHQCwPHLvFji6IWHh9EmK37+cbiJRNEdySuawLdR71MZQm+DPCdPG0
         +HeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZBLWRQgLbN3fZY0a8pKWb1nqP3QVCo134vM7nzrpe4y8ol2d1
	N7G1cU2MHpFcMd+uuaZugSA=
X-Google-Smtp-Source: ABdhPJy5f16ovA2+BcSX8XsQsaj6gC6l+BGe5AhLalBraCkdLf6OfYhnly1X8jfoNRJkhnxIscUBbg==
X-Received: by 2002:aca:4a0d:: with SMTP id x13mr373363oia.155.1606765654805;
        Mon, 30 Nov 2020 11:47:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c698:: with SMTP id m24ls800533ooq.3.gmail; Mon, 30 Nov
 2020 11:47:34 -0800 (PST)
X-Received: by 2002:a4a:be81:: with SMTP id o1mr14394794oop.25.1606765654419;
        Mon, 30 Nov 2020 11:47:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606765654; cv=none;
        d=google.com; s=arc-20160816;
        b=R7BIKfStnSm2IljwkHaiJ/IjJbq/29c6nSw1jIH9QPSznOZfeJOOUhqt95stkI8NJI
         apGtXheS1KfF7ME25SmulgNn4NrcbKnr5oiLYUhAG9G0cQM/vC3wDVZqxcTrfQQhvkd6
         MCzTVwqO9yuOcVwygcs26xcRR8nqiNA1QJv9hf8hK3uVjhfTMWl7HHVXVHHhSYiitI8e
         7aRt5z7ihHPirU290d0/JrfjRrsyuI28Y86mgaVNakseh31wUB/7LdTvWtJEibCyWKxW
         OghkPeUPAdgML3hiPocrl5A7qUT1D7OEVwd+HaOQ1Dmgc3hW8qy+g/ZCnesrZOjaFEPX
         dnkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=2SfH2iylQogE2GWIzlnoAyiRH45RAAGfSJe9TSSLtsM=;
        b=ka0BPAihdtEauHIERxlhDzzkSaYDaExGxkyhabO0G1k5yq3c/gsSy2Z4taJERDzMD5
         RrPfnFMLaw0ZrwbezCZKqTVmfnNv1FBX4V1HENJOhBEBjGt0A1ZcoOk/wVqreX7bOt2Q
         3SsFQT9wYr+mwbFsL/oXH79bOjFjIWg7c8xROI5x9iOeEu+NNoBHcWxrUy6m+B7/uldW
         Y77Wnc7WNBjxFfkUyaDahKR0GvMDuqoRR3cMBjIxWPEul0iz7DtzIqsxjP3Ezi1+cYFl
         sV3mRTNYyQbGvxl20/LsY8gdymK4HSkKlycJvA06vNTM514ldmPQb3YAPcSDpoh+aVJO
         srfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yu-cheng.yu@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=yu-cheng.yu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id e7si886716oop.1.2020.11.30.11.47.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 11:47:34 -0800 (PST)
Received-SPF: pass (google.com: domain of yu-cheng.yu@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: pi3lT2GqLy5LoMWc/tqoJl3LTmAHo8aVKVth8m60vDVDWK0LGsvt9s1b63CzKwCStlshuobqLZ
 VZoBtFcKPM4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="257410776"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; 
   d="scan'208";a="257410776"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Nov 2020 11:47:33 -0800
IronPort-SDR: orzMZuJ32woFCZ7q36QfA9/NJY3Ac/tcD/xJWvuX5MZfyK9drPO8O/V1TgLerY62KI4YLy9zco
 QzvT6RXgKkIA==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; 
   d="scan'208";a="372623976"
Received: from yyu32-mobl1.amr.corp.intel.com (HELO [10.212.122.22]) ([10.212.122.22])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Nov 2020 11:47:32 -0800
Subject: Re: [PATCH v15 01/26] Documentation/x86: Add CET description
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Dave P Martin <Dave.Martin@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Borislav Petkov <bp@alien8.de>, bsingharora@gmail.com,
 Jonathan Corbet <corbet@lwn.net>, dave.hansen@linux.intel.com,
 esyr@redhat.com, Florian Weimer <fweimer@redhat.com>, gorcunov@gmail.com,
 "H.J. Lu" <hjl.tools@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>,
 jannh@google.com, Kees Cook <keescook@chromium.org>,
 linux-api@vger.kernel.org, linux-arch <linux-arch@vger.kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-mm@kvack.org, luto@kernel.org,
 mike.kravetz@oracle.com, Ingo Molnar <mingo@redhat.com>,
 nadav.amit@gmail.com, oleg@redhat.com, pavel@ucw.cz, pengfei.xu@intel.com,
 Peter Zijlstra <peterz@infradead.org>, ravi.v.shankar@intel.com,
 Randy Dunlap <rdunlap@infradead.org>, Thomas Gleixner <tglx@linutronix.de>,
 vedvyas.shanbhogue@intel.com, weijiang.yang@intel.com,
 X86 ML <x86@kernel.org>, Luis Lozano <llozano@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>, erich.keane@intel.com
References: <20201110162211.9207-2-yu-cheng.yu@intel.com>
 <20201130182641.29812-1-ndesaulniers@google.com>
 <4fad528b-e467-f96d-b7fb-9484fd975886@intel.com>
 <CAFP8O3LjdP69_T1Ve-zZjvg7+v8xV1mh9Wk8zm4LpAsE2PG58Q@mail.gmail.com>
From: "Yu, Yu-cheng" <yu-cheng.yu@intel.com>
Message-ID: <a675b406-dcb9-ac38-3ecb-c98378d333cf@intel.com>
Date: Mon, 30 Nov 2020 11:47:31 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CAFP8O3LjdP69_T1Ve-zZjvg7+v8xV1mh9Wk8zm4LpAsE2PG58Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: yu-cheng.yu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yu-cheng.yu@intel.com designates 192.55.52.43 as
 permitted sender) smtp.mailfrom=yu-cheng.yu@intel.com;       dmarc=pass
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

On 11/30/2020 11:38 AM, F=C4=81ng-ru=C3=AC S=C3=B2ng wrote:
> On Mon, Nov 30, 2020 at 10:34 AM Yu, Yu-cheng <yu-cheng.yu@intel.com> wro=
te:
>>
>> On 11/30/2020 10:26 AM, Nick Desaulniers wrote:
>>> (In response to https://lore.kernel.org/lkml/20201110162211.9207-2-yu-c=
heng.yu@intel.com/)
>>>
>>>> These need to be enabled to build a CET-enabled kernel, and Binutils v=
2.31
>>>> and GCC v8.1 or later are required to build a CET kernel.
>>>
>>> What about LLVM? Surely CrOS might be of interest to ship this on (we s=
hip the
>>> equivalent for aarch64 on Android).
>>>
>>
>> I have not built with LLVM, but think it probably will work as well.  I
>> will test it.
>>
>>>> An application's CET capability is marked in its ELF header and can be
>>>> verified from the following command output, in the NT_GNU_PROPERTY_TYP=
E_0
>>>> field:
>>>>
>>>>       readelf -n <application> | grep SHSTK
>>>>           properties: x86 feature: IBT, SHSTK
>>>
>>> Same for llvm-readelf.
>>>
>>
>> I will add that to the document.
>>
>> Thanks,
>> Yu-cheng
>=20
> The baseline LLVM version is 10.0.1, which is good enough for  clang
> -fcf-protection=3Dfull, llvm-readelf -n, LLD's .note.gnu.property
> handling (the LLD option is `-z force-ibt`, though)
>=20
>=20

Thanks!

Yu-cheng

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a675b406-dcb9-ac38-3ecb-c98378d333cf%40intel.com.
