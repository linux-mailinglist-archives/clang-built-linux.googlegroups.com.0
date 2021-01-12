Return-Path: <clang-built-linux+bncBDRZXY4CYYORBM5D637QKGQE3MYEAPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id A43DC2F2EB2
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 13:10:28 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id mz17sf1460100pjb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 04:10:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610453427; cv=pass;
        d=google.com; s=arc-20160816;
        b=svBpyyt8Vi7HHNbRWDMZVx90xzLB+0sF/2BPYmgmqa8UomCiyD5I2uqb7Nt+dW4XJG
         IHOYJErcxK4ASkU5lrBCBcnG7iWU1K0ab5UQ6Vihp9gUwB+rIcB/7zIaaUoglLxB32yV
         jpb8bqZp1vuart+tJRjfITf14GR4cZpkzf0ukoZA1gmJSpa5Jn5zPR+S97TvZQcquVXD
         eAhhbI7i+3C/yEPNS1H95wphxofhnSTH9GpVMPjsGYvQkz9xui47/EPiLSZMepk8+Dsr
         189jGlyvpeyndNvwWxVSe62E3YfQZLXDHPfUV8903oARrxJBvfQGmU/dZ308S2+nB2bN
         hUig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=QiSDd/mnhkvXD0QTIWmmVbY6KsVmRUdgc94Lo+y4Cbc=;
        b=NM2jFWQeleo8QTkQ4rf2a9at5VW9c1T5HcyPV+xNb7Z5k/pZBhjd+ZMejtXkeFSj9X
         8koSr8+9Xlp75YMmnz0cj2GI2YWPMrOoWQLjzxODAsgL8vL8qan1BvhOkNxRQBYNcjFC
         Rk3MCCuFi9Bv8QdwKqhsTVil0NUnp9Dx/Lj5NsYEcMBIgGhnas+2DiJlNQKU66HD9P4W
         bzTFaWTYneix46qjdI1HaYZkqg6hwD3eFzy/IrgXN32oqWg6P7NiVIoUNAlAKmYA7fIW
         XVV79tCKfLj322r7oZ4KmquCsuZPP2FSb/A4cysJwT+cAIiJ8BFX7DGvWeG1c8K0PC7G
         hraA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xo6pedTa;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QiSDd/mnhkvXD0QTIWmmVbY6KsVmRUdgc94Lo+y4Cbc=;
        b=HouAFrYkSSdAf+zMnNN406tchkIqivRYRlTDC/bFytMp0HPJgaRsPKBrLwiFXRgYPE
         h37hj6chJ5YFWCRIc/S7mnGU5rmD/zsSKWEgp2vEGdDcUe/oqJkPLOAS9AV8ieWfxl77
         mhTH12KmGW3ygvrnWWQELtXdp4e5OU9yTsBCbOhK7nY4OzQKRel4SJJufcfaGmK9Ukri
         cRBI9jLtVzuKDR7s2Qjdk3O5Xjgh77f5wr1nWC9H6OVLNi/WC7sflkIidJkXPXD6w1ID
         WsBtRr2ORhWgLv36DRGo/cGJxQyvaoAkqVc3wfg1rYWo8X8Mjy970Nb7iPdTX+UKjUNy
         tc+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QiSDd/mnhkvXD0QTIWmmVbY6KsVmRUdgc94Lo+y4Cbc=;
        b=cy25N4SKdHV+oAsIkoW472OJyNFUMypsd4zi2MNctimf8Lk89CtgnW8vrn3PxvC0or
         U8k5nOf52pTDEkT1eQfoXafnW5Ht2qVSk6Xc+fkC6B5nu0u1CQ6SBA3QPSukt8BiezmB
         KgWZubYjtiMG5LHZ8p/RJESSj/knqTjih5tjhLb/MW1PmVHvcuaqPFG8P51WX5Vp+1We
         NZGFMo1zaezT047gUzSaUWIADoIrxie7G2TnxuKKoFVSLzSlRuJt7jGY4NK192NuzV8k
         nQa/cx+b8/oRLteLlo7K/oAqMkBJj0Hd7ziOH/70nVYQhqcXlCLEHupstsCdH02qZZoc
         +q6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UN3iuyNsCMNiB0x0OQXgljAT7VA2fqqfVKuuA3QqpCjl/08de
	roeHI/7Fb2lrYrkx4xwml/4=
X-Google-Smtp-Source: ABdhPJy2hAEEvY0vAFUht85vMfiKDbtRv1ybHhkCpBhFaUXR0iVO2PRVm8PJ0NQQn4A1HR8zUiA4Gg==
X-Received: by 2002:a63:4746:: with SMTP id w6mr4353148pgk.377.1610453427428;
        Tue, 12 Jan 2021 04:10:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5803:: with SMTP id m3ls1168303pgb.3.gmail; Tue, 12 Jan
 2021 04:10:26 -0800 (PST)
X-Received: by 2002:a62:19cb:0:b029:19e:75c2:61ec with SMTP id 194-20020a6219cb0000b029019e75c261ecmr4567975pfz.19.1610453426677;
        Tue, 12 Jan 2021 04:10:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610453426; cv=none;
        d=google.com; s=arc-20160816;
        b=G/e+v83H3PtBMdlqAfRA5Qg7jiacCbV/Fr5J2E2J7/3YhH18FETFYK0PmaIEGGEz72
         BEsVJ4efVnHvXCTty/yIA/VG9qACrUu9OaDPpb/W2HTHqs4eFUjKqp8bVpyVWxQsPkJu
         GlHRnoYXa3w94gmYFJZP/GEGZ50T+8KgihoaNqbJKlSB1L3TJ1h7Vxc00+mR4azWrmOz
         LvTXOLlewdCEuZMu49U6gL0Qj9xpXpxln8f5fKFC1ucMQr7Eqks0EYOJOBEkE2K0Q9Ie
         CPWJlLAwV28qAd7ipT9TT4tNCh+n29f3HVDkDq9KMhXv6jSJZO/nboPGUIYEstiROD5g
         wkpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=NZcfuIkSfijuGWfxInzpq+l4A2mSAx/w0ty9n0COzTo=;
        b=RWqsQP2lE4y1PQgKul3bR2Gp6ICtcmcsCSA2xkXFerXe4hX9Cw74MKspnZw1k3PRC2
         BMkHenNt7L/cStCVu4l6hcKqPPggd7cROlnefHXnF7p2XDWakzXX15TKax0aEnQMcsry
         RorOWDgNGu165FkkJZ/JYeFEOJhmfH5L9dI7fQBn71IUZxWdRtBR7kTWiyRnM25/iiaG
         QNHSXvSaR87kS8kVbodOpTgxqD+rtwASYV/xwxlSo76erwgHTx3W4Ep/ye37Xw86Tg2t
         Tqyjfs2cM6IMR6L2kpqiMCyg3MZ1Vc4rsNjDbhsKkzyMwWBhUDWPT/f9nTkSyBKLxDVg
         ZgDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xo6pedTa;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id ne6si193179pjb.1.2021.01.12.04.10.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 04:10:26 -0800 (PST)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-395-V7glGg3LN_-T9j4qAKVOAg-1; Tue, 12 Jan 2021 07:10:22 -0500
X-MC-Unique: V7glGg3LN_-T9j4qAKVOAg-1
Received: by mail-ej1-f70.google.com with SMTP id ov1so928047ejb.1
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 04:10:21 -0800 (PST)
X-Received: by 2002:a50:fc83:: with SMTP id f3mr3207128edq.219.1610453420964;
        Tue, 12 Jan 2021 04:10:20 -0800 (PST)
X-Received: by 2002:a50:fc83:: with SMTP id f3mr3207116edq.219.1610453420798;
        Tue, 12 Jan 2021 04:10:20 -0800 (PST)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-37a3-353b-be90-1238.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:37a3:353b:be90:1238])
        by smtp.gmail.com with ESMTPSA id v16sm1307446eds.64.2021.01.12.04.10.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 04:10:20 -0800 (PST)
Subject: Re: [pm:bleeding-edge 20/29] drivers/acpi/platform_profile.c:67:33:
 error: passing 'const struct platform_profile_handler to parameter of type
 'struct platform_profile_handler discards qualifiers
To: Jiaxun Yang <jiaxun.yang@flygoat.com>, kernel test robot <lkp@intel.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-acpi@vger.kernel.org, devel@acpica.org, linux-pm@vger.kernel.org
References: <202101081623.CGkLO3Kx-lkp@intel.com>
 <5e7a4d87-52ef-e487-9cc2-8e7094beaa08@redhat.com>
 <106d7891-230f-18e1-1b0f-cb6a62cf0387@flygoat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <01442a77-7d87-5a12-d7b8-4fe397a37464@redhat.com>
Date: Tue, 12 Jan 2021 13:10:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <106d7891-230f-18e1-1b0f-cb6a62cf0387@flygoat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Xo6pedTa;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
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

Hi,

On 1/12/21 1:07 PM, Jiaxun Yang wrote:
> =E5=9C=A8 2021/1/12 =E4=B8=8B=E5=8D=886:42, Hans de Goede =E5=86=99=E9=81=
=93:
>> Hi,
>>
>> On 1/8/21 9:52 AM, kernel test robot wrote:
> [...]
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
> [...]
>>> =C2=A0=C2=A0=C2=A0 2 errors generated.
>=20
> Oops, thanks for the reminder, I should exclude 0day CI from mail filter.
> It's wired that GCC didn't say anything about it.
>=20
>> Ugh, so that means that the current version of the
>> "ACPI: platform-profile: Pass profile pointer to driver callbacks"
>> patch is no good. Since this is causing compile errors I assume
>> that it will be dropped from the bleeding-edge branch.
>> Is that right Rafael?
>=20
> I'm not familiar with x86pdx and ACPI workflow.
> Should I resend the patch or send a fixup patch?

I believe a new version of the patch is best, then Rafael can
replace the broken patch. We want to avoid having a commit in
git history which does not compile in some cases, because that
creates problems when git bisecting.

Regards,

Hans

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/01442a77-7d87-5a12-d7b8-4fe397a37464%40redhat.com.
