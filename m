Return-Path: <clang-built-linux+bncBDPZFQ463EFRB7FLVD5QKGQEKNLBIWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8001D27451C
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 17:19:25 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id c194sf3641420lfg.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 08:19:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600787965; cv=pass;
        d=google.com; s=arc-20160816;
        b=G+V/i+c09vOiwsj9sFzkxTZx+2OUal+ZlKb9S83/IXB5Ttu6rePkIpFbrnDzhaEZQc
         ImuCgQ0yKfgBLFeIbRR3Cqbz5LqpuugnQeMYQUJX61FwKDgk+HHqaIW9GitTXV2cCf3Q
         1k09V8BiPyMAnptOwzCff4O2CR1xvZQHTD2yblo5hU6S34u8zozlj/5DqRYszmkBKS9H
         o/Vi6yPxNZ9CpxGPhHRv/iFc0Lysg+6T+sYiAzKqgNa+LpHkc7HgflzZ/Rf5HixzwWAu
         DRItZc32gBausOMJ/VUU0j4i6VeDM4QkN7FGmWI56x3q7WT3nkmIPdNGTqSmJtrqFJAp
         OSUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ReaOsrsU3WGl+/XqvTVRAu4q9ZLEyV4E5KeBhRlA+h0=;
        b=Cz6BHTz1W8VRJQIIDTQlcK9W+i6xokl7M0E10CHMQeo5aLdxaBORRoVBaPF/PgBg9h
         6W5wmGhBgAoT+zyg6CMf94HKzeo6E0q+MS1gmAtjtlMnVPVkhaf4UCLQcTIJ0T3qdb5Z
         /jMy+Ibhf8BkqRhoC6FTs/bDjwGRfq2gN2GEy7cE6xexzbIp6R90VPywMioEtlPv8YeW
         uAF26O3+LeRTIiaFNmvY5DYjyTpZOcG6zMkwHrjM+zNmzocabN7GvS/5wI5kpEU11k4v
         KcJsenAHb8q9t5qasRL0BIfrCQsDQH//cJ2Beg4QErs6SYyTgIR9pqp/nt8TQwMf+gb2
         ZNbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ud7Z8q5I;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ReaOsrsU3WGl+/XqvTVRAu4q9ZLEyV4E5KeBhRlA+h0=;
        b=nFkY2H0tzLLmoicfMuSxI068GZc82JSjsMJAR+fVrNam/wTLeMc5/NWDylbtsVY42H
         TsFfHsGjYT7svJV7BBvbyvzz6Dmlomt107clU4YaL0inPEAwnhDKgceIUS1QOdkMHEnl
         Gc6rRzhz/a/lF8O164Nigmc/kT75QCN2KHV9flN2V94k5ftTYTnkKcpJE0IByWlrm8qJ
         O4sYgy7li4by4cttVhpW+C1BAoQPd3wW+b4QSouc4HSJCTuTNmu+dRd/n68HYOKnwcoc
         YCHyGBkliKygeODrUNHbsPABRWVajdSMbH3y9y87X3rIN8nonGdMOjstLEH+r/yx1BWC
         PuDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ReaOsrsU3WGl+/XqvTVRAu4q9ZLEyV4E5KeBhRlA+h0=;
        b=vEK8bqz44DM4Pa65tZNEO6M2o0AjpfVnTLPW2AZ4zKZyU/Ss/t6ZWmxgHQuu0VuBQk
         SnNj64YHTnHycc70THguMfCSgST8YSqvQUNn8GjIK209kdhUoYjtLY04FwrbWjneC7GX
         v63hdHSWwYTwk2fkRXoFQ4aBPL2/uKnY+Y+bXwsUJEXCOYvGGp9TJ47IFg2NVFDwPPsP
         iCsgJWJMk3fynUfarD7sWKrk9fq0nXIjjrZTyADMpROWen3UBe69sxYseDglU5bwJdiv
         fva+iPWD2/98CKrAQYCJ//q6CsgHLPknMkcEEPZlICEaVf3hSQFdJ2KX3vg9IdQbzNEz
         XIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ReaOsrsU3WGl+/XqvTVRAu4q9ZLEyV4E5KeBhRlA+h0=;
        b=t+dI5yGcU6FOIDH0Lw1pYThAL3Wzya7IgHLJ4NKrXkJL1SWCJq8prKRGzGKTD+4AF0
         UdaU9FDuTHpqrFmTffCgKb7FJ7qSlqVkWX7XLK+0dQKIyT7775ukO+1nkD7+UPIdP6Nx
         rfbNAOE7Md1fGHsqPJZujIH+dK7kXbWOgkYI+YBK1/BsQj7WmYjzP06jXJGwFvFEQXME
         kwgMurFOo64PXzVT29f82LEnZrb/000pBi32dUWk+S0d3UoCY8/NlOZctejFTOKOTc0u
         zG+gcIPGG08aCyP7Hmq4SK1M928np3LLpOwbTPFxU451HQmcx5M6lxrH96xN5qzYeZbh
         8pOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AIvEZEFbisjwt+ULSu5ATiYw3hiYlJFIMt3NsXC9cdNPpN2bH
	p729+nW4M04byCMjsYskLfA=
X-Google-Smtp-Source: ABdhPJxahCz80rfFkyC4s7uWlg+ySuY+QjEnlvdYZ/QRr74esEocl6M14nTux/Xvh5dBtoY/MC421g==
X-Received: by 2002:a05:6512:370e:: with SMTP id z14mr1967664lfr.80.1600787965023;
        Tue, 22 Sep 2020 08:19:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5c44:: with SMTP id s4ls358078lfp.3.gmail; Tue, 22 Sep
 2020 08:19:24 -0700 (PDT)
X-Received: by 2002:ac2:4318:: with SMTP id l24mr2069916lfh.46.1600787963944;
        Tue, 22 Sep 2020 08:19:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600787963; cv=none;
        d=google.com; s=arc-20160816;
        b=K7Wbrzmx8h6n8ypee2ZxQ7mLi2g0aWb1Ie5CkRhBbbJwAK7LwIKQ3+f1jrbcZ81yLI
         iQ2FCu0Tv97wz0jSsTaeLGGFquwDhP3+EuPQF9THMF20705Qai6VVEpjsCyiu69Tfhh3
         GOojg8wzRY8EYv7eK0S0QASp9Wvqeeg4wkPFhoo7LBALhOVRJdAuo2XBOO3JuGseQnG8
         bzjfKo8JLyFZaZ3nrpL8Eov9iNOEkmOESF+D+4IoJokidIz+FFVozZMZTDFH965o3puJ
         4+ie1mA543+stLZM3quMWJHbhv5r5Z8oRwTenIQWTPHwROMXArkzUWdj+6cQb/8N46om
         cpXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=scqHhJ8H2F1OwqEQAUQOLL4YJrrUXBZObQzVzFZayBI=;
        b=WLkgkGCch2MiNr08uMli7RXY4Md6896wFtvb8f299QCHVIdPb1O728G2faljrhOMDW
         89Gk12ZOJaGKT0JsiVQKqlLAxiNhP2p5rG6oToX+DTCWDY9/iKW2/sQHi1De6BWQGkQG
         P8FElyn+YNEBDCZVJQuSryHTUo9Cd+UcZ9fsqKNbXcvChkuOFoKlpQjQXaTUI7denDHp
         l6APftyFoJhi9lrEgN52fDy/Mwk12ajJg992ap6v+uCEaOaPiNMQGXgyD9V6r7yw/5YQ
         o0ivu7v2jAiglPcaqgoi/1RjWEoYRuSpoZozBBnYbqlS8ysybFKZSy2kaGTmBrhUS8tX
         ydbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ud7Z8q5I;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id r16si408121ljg.1.2020.09.22.08.19.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 08:19:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id q9so3748847wmj.2
        for <clang-built-linux@googlegroups.com>; Tue, 22 Sep 2020 08:19:23 -0700 (PDT)
X-Received: by 2002:a1c:7d4d:: with SMTP id y74mr1562936wmc.73.1600787963365;
 Tue, 22 Sep 2020 08:19:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200922054743.2422929-1-natechancellor@gmail.com>
In-Reply-To: <20200922054743.2422929-1-natechancellor@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 22 Sep 2020 11:19:12 -0400
Message-ID: <CADnq5_MP85Qqv9N6VYnyRYAACU82G+e1oXyESUYoqp=QMYEbYg@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: Simplify condition in try_disable_dsc
To: Nathan Chancellor <natechancellor@gmail.com>, "Wentland, Harry" <Harry.Wentland@amd.com>, 
	"Leo (Sunpeng) Li" <Sunpeng.Li@amd.com>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ud7Z8q5I;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 22, 2020 at 3:47 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c:637:8:
> warning: logical not is only applied to the left hand side of this
> comparison [-Wlogical-not-parentheses]
>                                 && !params[i].clock_force_enable == DSC_CLK_FORCE_DEFAULT) {
>                                    ^                             ~~
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c:637:8:
> note: add parentheses after the '!' to evaluate the comparison first
>                                 && !params[i].clock_force_enable == DSC_CLK_FORCE_DEFAULT) {
>                                    ^
>                                     (
> )
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_mst_types.c:637:8:
> note: add parentheses around left hand side expression to silence this
> warning
>                                 && !params[i].clock_force_enable == DSC_CLK_FORCE_DEFAULT) {
>                                    ^
>                                    (                            )
> 1 warning generated.
>
> The expression "!a == 0" can be more simply written as "a", which makes
> it easier to reason about the logic and prevents the warning.
>
> Fixes: 0749ddeb7d6c ("drm/amd/display: Add DSC force disable to dsc_clock_en debugfs entry")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1158
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

@Wentland, Harry or @Leo (Sunpeng) Li  can you provide some guidance
on what the logic is supposed to be here?

Thanks,

Alex

> ---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> index 9d7333a36fac..0852a24ee392 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> @@ -634,7 +634,7 @@ static void try_disable_dsc(struct drm_atomic_state *state,
>         for (i = 0; i < count; i++) {
>                 if (vars[i].dsc_enabled
>                                 && vars[i].bpp_x16 == params[i].bw_range.max_target_bpp_x16
> -                               && !params[i].clock_force_enable == DSC_CLK_FORCE_DEFAULT) {
> +                               && params[i].clock_force_enable) {
>                         kbps_increase[i] = params[i].bw_range.stream_kbps - params[i].bw_range.max_kbps;
>                         tried[i] = false;
>                         remaining_to_try += 1;
>
> base-commit: 6651cdf3bfeeaeb499db11668313666bf756579a
> --
> 2.28.0
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_MP85Qqv9N6VYnyRYAACU82G%2Be1oXyESUYoqp%3DQMYEbYg%40mail.gmail.com.
